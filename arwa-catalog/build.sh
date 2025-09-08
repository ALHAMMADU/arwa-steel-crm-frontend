#!/usr/bin/env bash
set -euo pipefail

cd /workspace/arwa-catalog

pandoc catalog.md \
  --from markdown+table_captions+pipe_tables \
  --pdf-engine=xelatex \
  -V mainfont='Noto Sans' \
  -V sansfont='Noto Sans' \
  -V CJKmainfont='Noto Sans CJK SC' \
  -V geometry:a4paper \
  -V geometry:margin=18mm \
  -V colorlinks=true \
  -V linkcolor=blue \
  -o ARWA-Catalog_EN-ZH.pdf

echo "Output: /workspace/arwa-catalog/ARWA-Catalog_EN-ZH.pdf"

