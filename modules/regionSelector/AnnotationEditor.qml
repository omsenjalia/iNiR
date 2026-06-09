pragma ComponentBehavior: Bound
import qs
import qs.modules.common
import qs.modules.common.functions
import qs.modules.common.widgets
import qs.services
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Shapes
import Quickshell
import Quickshell.Io
import Quickshell.Wayland

// Native screenshot annotation editor. Loads a cropped screenshot, lets the
// user draw (pen / rectangle / arrow / text / highlight), then exports the
// composited result to the clipboard and the screenshots folder. Replaces the
// external swappy/satty editor for the region selector's Edit action.
PanelWindow {
    id: root

    property string imagePath: GlobalStates.annotationEditorPath
    signal finished()

    WlrLayershell.layer: WlrLayer.Overlay
    WlrLayershell.namespace: "quickshell:annotationEditor"
    WlrLayershell.keyboardFocus: WlrKeyboardFocus.Exclusive
    screen: Quickshell.screens[0] ?? null
    color: "transparent"
    anchors { top: true; left: true; right: true; bottom: true }

    // ── Tool state ──────────────────────────────────────────────────────────
    property string tool: "pen"           // pen | rect | arrow | text | highlight
    property color strokeColor: Appearance.m3colors.m3primary
    property real strokeWidth: 4
    property var strokes: []              // committed shape strokes
    property var texts: []                // committed text annotations
    property var history: []              // creation order: {kind:"shape"|"text"}
    property var current: null            // live shape being drawn

    readonly property var palette: [
        Appearance.m3colors.m3primary,
        "#e53935", "#fb8c00", "#fdd835", "#43a047", "#1e88e5", "#ffffff", "#000000"
    ]

    function commitShape(s) {
        const arr = root.strokes.slice(); arr.push(s); root.strokes = arr;
        const h = root.history.slice(); h.push({ kind: "shape" }); root.history = h;
    }
    function addText(x, y) {
        const arr = root.texts.slice();
        arr.push({ x: x, y: y, text: "", color: String(root.strokeColor), size: Math.max(14, root.strokeWidth * 5) });
        root.texts = arr;
        const h = root.history.slice(); h.push({ kind: "text" }); root.history = h;
        textRepeater.focusLast();
    }
    function undo() {
        if (root.history.length === 0) return;
        const h = root.history.slice(); const last = h.pop(); root.history = h;
        if (last.kind === "shape") { const a = root.strokes.slice(); a.pop(); root.strokes = a; }
        else { const a = root.texts.slice(); a.pop(); root.texts = a; }
    }
    function clearAll() { root.strokes = []; root.texts = []; root.history = []; root.current = null; }

    function close() {
        GlobalStates.annotationEditorOpen = false;
        GlobalStates.annotationEditorPath = "";
        root.finished();
    }

    // Build the polyline points for a shape stroke based on its tool.
    function pointsFor(s) {
        if (!s || !s.pts || s.pts.length === 0) return [];
        if (s.tool === "pen" || s.tool === "highlight") return s.pts;
        const a = s.pts[0]; const b = s.pts[s.pts.length - 1];
        if (s.tool === "rect")
            return [Qt.point(a.x, a.y), Qt.point(b.x, a.y), Qt.point(b.x, b.y), Qt.point(a.x, b.y), Qt.point(a.x, a.y)];
        if (s.tool === "arrow") {
            const dx = b.x - a.x, dy = b.y - a.y;
            const len = Math.max(1, Math.hypot(dx, dy));
            const ux = dx / len, uy = dy / len;
            const head = Math.min(22, len * 0.4);
            const ang = 0.5;
            const lx = b.x - head * (ux * Math.cos(ang) - uy * Math.sin(ang));
            const ly = b.y - head * (uy * Math.cos(ang) + ux * Math.sin(ang));
            const rx = b.x - head * (ux * Math.cos(ang) + uy * Math.sin(ang));
            const ry = b.y - head * (uy * Math.cos(ang) - ux * Math.sin(ang));
            return [Qt.point(a.x, a.y), Qt.point(b.x, b.y), Qt.point(lx, ly), Qt.point(b.x, b.y), Qt.point(rx, ry)];
        }
        return s.pts;
    }

    // Keyboard shortcuts. PanelWindow is not an Item, so Keys must attach to an
    // Item; this focus holder catches Esc/Ctrl+Z when no text field is editing.
    Item {
        anchors.fill: parent
        focus: true
        Keys.onPressed: (e) => {
            if (e.key === Qt.Key_Escape) { root.close(); e.accepted = true; }
            else if ((e.modifiers & Qt.ControlModifier) && e.key === Qt.Key_Z) { root.undo(); e.accepted = true; }
        }
    }

    // Dim background
    Rectangle {
        anchors.fill: parent
        color: Qt.rgba(0, 0, 0, 0.55)
    }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 14

        // ── Canvas (image + annotations) — this is what gets exported ─────────
        Item {
            id: captureArea
            Layout.alignment: Qt.AlignHCenter
            readonly property real maxW: root.width * 0.82
            readonly property real maxH: root.height * 0.74
            readonly property real iw: sourceImage.sourceSize.width
            readonly property real ih: sourceImage.sourceSize.height
            readonly property real fit: (iw > 0 && ih > 0) ? Math.min(maxW / iw, maxH / ih, 1) : 1
            implicitWidth: iw > 0 ? Math.round(iw * fit) : 480
            implicitHeight: ih > 0 ? Math.round(ih * fit) : 320
            width: implicitWidth
            height: implicitHeight

            Image {
                id: sourceImage
                anchors.fill: parent
                source: root.imagePath !== "" ? `file://${root.imagePath}` : ""
                fillMode: Image.Stretch
                smooth: true
                cache: false
            }

            // Committed shapes
            Repeater {
                model: root.strokes
                delegate: Shape {
                    id: shapeDelegate
                    required property var modelData
                    anchors.fill: parent
                    preferredRendererType: Shape.CurveRenderer
                    ShapePath {
                        strokeColor: shapeDelegate.modelData.color
                        strokeWidth: shapeDelegate.modelData.width
                        fillColor: "transparent"
                        capStyle: ShapePath.RoundCap
                        joinStyle: ShapePath.RoundJoin
                        PathPolyline { path: root.pointsFor(shapeDelegate.modelData) }
                    }
                }
            }

            // Live shape being drawn
            Shape {
                anchors.fill: parent
                visible: root.current !== null
                preferredRendererType: Shape.CurveRenderer
                ShapePath {
                    strokeColor: root.current ? root.current.color : "transparent"
                    strokeWidth: root.current ? root.current.width : 0
                    fillColor: "transparent"
                    capStyle: ShapePath.RoundCap
                    joinStyle: ShapePath.RoundJoin
                    PathPolyline { path: root.pointsFor(root.current) }
                }
            }

            // Committed text annotations
            Repeater {
                id: textRepeater
                model: root.texts
                function focusLast() { if (count > 0) itemAt(count - 1)?.focusInput(); }
                delegate: TextInput {
                    id: textInput
                    required property var modelData
                    required property int index
                    function focusInput() { textInput.forceActiveFocus(); }
                    x: modelData.x
                    y: modelData.y
                    color: modelData.color
                    font.pixelSize: modelData.size
                    font.family: Appearance.font.family.main
                    text: modelData.text
                    onTextChanged: root.texts[index].text = text
                    selectByMouse: true
                    cursorVisible: activeFocus
                    Component.onCompleted: if (text === "") forceActiveFocus()
                }
            }

            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton
                cursorShape: Qt.CrossCursor
                onPressed: (m) => {
                    if (root.tool === "text") { root.addText(m.x, m.y); return; }
                    root.current = {
                        tool: root.tool,
                        color: root.tool === "highlight" ? ColorUtils.transparentize(root.strokeColor, 0.6) : String(root.strokeColor),
                        width: root.tool === "highlight" ? root.strokeWidth * 4 : root.strokeWidth,
                        pts: [Qt.point(m.x, m.y)]
                    };
                }
                onPositionChanged: (m) => {
                    if (!root.current) return;
                    const c = root.current;
                    if (c.tool === "pen" || c.tool === "highlight") c.pts.push(Qt.point(m.x, m.y));
                    else c.pts = [c.pts[0], Qt.point(m.x, m.y)];
                    root.current = c;            // reassign to refresh binding
                }
                onReleased: () => {
                    if (root.current) { root.commitShape(root.current); root.current = null; }
                }
            }
        }

        // ── Tool palette ──────────────────────────────────────────────────────
        Toolbar {
            Layout.alignment: Qt.AlignHCenter

            Repeater {
                model: [
                    { "tool": "pen", "icon": "edit" },
                    { "tool": "rect", "icon": "rectangle" },
                    { "tool": "arrow", "icon": "north_east" },
                    { "tool": "text", "icon": "title" },
                    { "tool": "highlight", "icon": "ink_highlighter" }
                ]
                delegate: RippleButton {
                    id: toolBtn
                    required property var modelData
                    Layout.alignment: Qt.AlignVCenter
                    implicitWidth: 40; implicitHeight: 40
                    buttonRadius: Appearance.rounding.full
                    toggled: root.tool === modelData.tool
                    onClicked: root.tool = modelData.tool
                    contentItem: MaterialSymbol {
                        anchors.centerIn: parent
                        iconSize: 22
                        text: toolBtn.modelData.icon
                        color: toolBtn.toggled ? Appearance.colors.colOnPrimary : Appearance.colors.colOnLayer1
                    }
                }
            }

            Rectangle { Layout.alignment: Qt.AlignVCenter; implicitWidth: 1; implicitHeight: 24; color: Appearance.colors.colOutlineVariant }

            // Color swatches
            Repeater {
                model: root.palette
                delegate: Rectangle {
                    id: swatch
                    required property var modelData
                    Layout.alignment: Qt.AlignVCenter
                    implicitWidth: 24; implicitHeight: 24
                    radius: Appearance.rounding.full
                    color: swatch.modelData
                    border.width: root.strokeColor == swatch.modelData ? 3 : 1
                    border.color: root.strokeColor == swatch.modelData ? Appearance.colors.colOnLayer1 : Appearance.colors.colOutlineVariant
                    MouseArea { anchors.fill: parent; cursorShape: Qt.PointingHandCursor; onClicked: root.strokeColor = swatch.modelData }
                }
            }

            Rectangle { Layout.alignment: Qt.AlignVCenter; implicitWidth: 1; implicitHeight: 24; color: Appearance.colors.colOutlineVariant }

            StyledSlider {
                Layout.alignment: Qt.AlignVCenter
                Layout.preferredWidth: 90
                from: 1; to: 24
                value: root.strokeWidth
                onValueChanged: root.strokeWidth = value
            }

            RippleButton {
                id: undoBtn
                Layout.alignment: Qt.AlignVCenter
                implicitWidth: 40; implicitHeight: 40
                buttonRadius: Appearance.rounding.full
                enabled: root.history.length > 0
                onClicked: root.undo()
                contentItem: MaterialSymbol { anchors.centerIn: parent; iconSize: 22; text: "undo"; color: Appearance.colors.colOnLayer1 }
                StyledToolTip { text: Translation.tr("Undo (Ctrl+Z)") }
            }

            FloatingActionButton {
                Layout.alignment: Qt.AlignVCenter
                baseSize: 44
                iconText: "content_copy"
                onClicked: root.exportImage()
                StyledToolTip { text: Translation.tr("Copy & save") }
            }

            RippleButton {
                Layout.alignment: Qt.AlignVCenter
                implicitWidth: 40; implicitHeight: 40
                buttonRadius: Appearance.rounding.full
                onClicked: root.close()
                contentItem: MaterialSymbol { anchors.centerIn: parent; iconSize: 22; text: "close"; color: Appearance.colors.colOnLayer1 }
                StyledToolTip { text: Translation.tr("Discard (Esc)") }
            }
        }
    }

    // ── Export ────────────────────────────────────────────────────────────────
    property string _outPath: "/tmp/quickshell/media/screenshot/annotated.png"
    function exportImage() {
        // Drop focus so the text cursor isn't captured in the grab.
        root.forceActiveFocus();
        captureArea.grabToImage(function(result) {
            result.saveToFile(root._outPath);
            saveProc.startDetached();
            root.close();
        }, Qt.size(sourceImage.sourceSize.width, sourceImage.sourceSize.height));
    }

    Process {
        id: saveProc
        command: ["/usr/bin/bash", "-c",
            `_dir='${StringUtils.shellSingleQuoteEscape(Directories.screenshotsPath)}' && mkdir -p "$_dir" `
            + `&& _ss="$_dir/$(date +'${StringUtils.shellSingleQuoteEscape(Config.options?.regionSelector?.screenshotNameFormat ?? "ss-%Y%m%d-%H%M%S")}').png" `
            + `&& cp '${root._outPath}' "$_ss" && /usr/bin/wl-copy < "$_ss" && echo -n "$_ss" | /usr/bin/wl-copy --primary `
            + `&& /usr/bin/rm -f '${root._outPath}' `
            + `&& /usr/bin/notify-send "Screenshot edited" "Annotated image copied and saved to $_ss" -a "Screenshot" -i camera-photo -t 3000`]
    }
}
