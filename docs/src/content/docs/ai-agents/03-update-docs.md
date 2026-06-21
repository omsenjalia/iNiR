---
title: Updating Docs
description: How to keep documentation in sync with code changes
---

## The rule

**After making any code change, you must:**

1. Update the relevant documentation page under `docs/src/content/docs/`
2. Add details to the changelog

This ensures that documentation stays accurate and other agents (or humans) can understand what changed and why.

## Which page to update

| What you changed | Update this page |
|-----------------|------------------|
| Keybinds | `docs/src/content/docs/reference/keybinds.md` |
| Autostart apps / environment | `docs/src/content/docs/guide/autostart.md` |
| Install dependencies / packages | `docs/src/content/docs/reference/packages.md` |
| Quickshell services | `docs/src/content/docs/reference/services.md` |
| Config options | `docs/src/content/docs/architecture-theming/config-system.md` |
| Bug fixes / limitations | `docs/src/content/docs/guide/limitations.md` |
| New features | Relevant guide pages under `docs/src/content/docs/guide/` |

## Weekly summaries & changelog lifecycle

The changelog system follows this lifecycle:

1. **Push to `main`** → `docs-changelog.yml` creates a per-commit entry in `docs/src/content/docs/ai-agents/changelog/YYYY-MM-DD-<sha>.md`
2. **AI agent works** → fills in the `## AI Agent Notes` section of the relevant changelog entry
3. **Weekly rollup** → `weekly-summary.yml` runs:
   - Generates a consolidated weekly summary at `docs/src/content/docs/ai-agents/weekly-summaries/<month>-week-<n>.md`
   - **Deletes all individual changelog entries** for that week
4. The weekly summary becomes the **permanent record** — individual changelogs no longer exist

## Running the docs site locally

```bash
cd docs
npm install
npm run sync    # Copies custom/*.md into docs/src/content/docs/custom/
npm run dev     # Starts dev server at localhost:4321
```

## Adding a new guide/reference page

1. Create the `.md` file in the appropriate directory under `docs/src/content/docs/`
2. Add frontmatter:
   ```yaml
   ---
   title: "Your Page Title"
   description: "One-line summary"
   ---
   ```
3. Add the page to the sidebar in `docs/astro.config.mjs` if it needs manual ordering, or rely on autogenerate directories.
4. Use standard Markdown plus [Starlight components](https://starlight.astro.build/guides/components/)

## File locations

| What | Path |
|------|------|
| Astro config | `docs/astro.config.mjs` |
| Custom CSS | `docs/src/styles/custom.css` |
| Guide pages | `docs/src/content/docs/guide/` |
| Architecture & Theming pages | `docs/src/content/docs/architecture-theming/` |
| Reference pages | `docs/src/content/docs/reference/` |
| AI agent pages | `docs/src/content/docs/ai-agents/` |
| Custom docs (auto-synced) | `docs/src/content/docs/custom/` |
| Sync script | `docs/scripts/sync-custom-docs.mjs` |
| Vercel config | `docs/vercel.json` |
