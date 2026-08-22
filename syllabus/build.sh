#!/usr/bin/env bash
# Build the syllabus PDFs with Tectonic.
#   ./build.sh          -> both languages
#   ./build.sh es | en  -> one language
set -euo pipefail

cd "$(dirname "$0")"

TECTONIC="${TECTONIC:-$(command -v tectonic || echo "$HOME/.local/bin/tectonic")}"
if [[ ! -x "$TECTONIC" ]]; then
  echo "tectonic not found. Install it from https://tectonic-typesetting.github.io/" >&2
  exit 1
fi

build() {
  local dir="$1" tex
  tex=$(ls "$dir"/*.tex)
  echo "==> $tex"
  "$TECTONIC" "$tex"
}

case "${1:-all}" in
  es) build es ;;
  en) build en ;;
  all) build es; build en ;;
  *) echo "usage: $0 [es|en|all]" >&2; exit 2 ;;
esac
