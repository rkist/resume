# Templates directory

Each subfolder under `templates/` represents a distinct LaTeX layout for the resume. The structure we follow is:

```
templates/<template-name>/
├── template.tex      # entry point (produces PDF when compiled)
├── content.tex       # optional, shared snippet of personal data or helpers
├── README.md         # describes the layout, color palette, and how to build
```

The `templates/canva-template` introduced here mirrors the Canva-inspired PDF you shared. Run `./scripts/build-canvas-template.sh` to build it and inspect the outputs in `build/canva-template/` and `dist/`.

Feel free to add more subdirectories with your own experiments — keep them isolated so each template can be compiled independently without touching `src/resume.tex`.
