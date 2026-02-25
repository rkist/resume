#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

mkdir -p build dist

# 1) PDF
latexmk -pdf src/resume.tex
cp -f build/resume.pdf dist/raul-kist-resume.pdf

# 2) DVI
latexmk -dvi src/resume.tex
cp -f build/resume.dvi dist/raul-kist-resume.dvi

# 3) PostScript
latexmk -ps src/resume.tex
cp -f build/resume.ps dist/raul-kist-resume.ps

# 4) Plain text (from PDF)
if command -v pdftotext >/dev/null 2>&1; then
  pdftotext -layout dist/raul-kist-resume.pdf dist/raul-kist-resume.txt
fi

# 5) SVG pages (from DVI)
if command -v dvisvgm >/dev/null 2>&1; then
  dvisvgm --no-fonts -o dist/raul-kist-resume-%p.svg dist/raul-kist-resume.dvi >/dev/null
fi

echo "Built artifacts in dist/:"
ls -1 dist | sed 's/^/ - /'
