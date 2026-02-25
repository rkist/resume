#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
latexmk -pdf src/resume.tex
cp -f build/resume.pdf dist/raul-kist-resume.pdf

echo "Built: dist/raul-kist-resume.pdf"
