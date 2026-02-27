# Resume Repository

This repo keeps Raul's resume source, assets, and supporting build scripts in one place.

## Layout
- `src/`: the main resume LaTeX source used by the standard `latexmk` pipeline.
- `templates/`: experimental templates (each template lives in its own folder with a sample `.tex`).
- `scripts/`: helper scripts (`build.sh`, `build-canvas-template.sh`) for compiling the sources.
- `dist/`: generated PDFs, DVI/PS exports, and plain text clones.

## Building
- `./scripts/build.sh` builds the current `src/resume.tex` through PDF/DVI/PostScript + text + SVG.
- `./scripts/build-canvas-template.sh` compiles `templates/canva-template/template.tex` so you can preview alternate layouts.

## Templates
- Drop templates under `templates/<name>/` with a `template.tex` and supporting files.
- Each template should include a note (e.g., via `README.md` inside the folder) describing its intent and required dependencies.
- New templates can be referenced from `scripts/build-*.sh` to keep the build flow simple.
