#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

mkdir -p build/canva-template
latexmk -pdf "templates/canva-template/template.tex"
cp -f build/template.pdf dist/canva-template.pdf
