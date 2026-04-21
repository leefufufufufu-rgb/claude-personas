#!/usr/bin/env bash
# claude-personas installer
# Installs persona styles into ~/.claude/output-styles/

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$HOME/.claude/output-styles"

# Parse language preference
LANG_ARG="${1:-both}"

case "$LANG_ARG" in
  zh)   LANGS=("zh") ;;
  en)   LANGS=("en") ;;
  both) LANGS=("zh" "en") ;;
  *)
    echo "Usage: $0 [zh|en|both]"
    echo "  zh    Install Chinese personas only"
    echo "  en    Install English personas only"
    echo "  both  Install both (default)"
    exit 1
    ;;
esac

echo "→ Target: $TARGET_DIR"
mkdir -p "$TARGET_DIR"

count=0
for lang in "${LANGS[@]}"; do
  src_dir="$SCRIPT_DIR/styles/$lang"
  [ ! -d "$src_dir" ] && { echo "  skip: $src_dir not found"; continue; }

  for style in "$src_dir"/*.md; do
    [ -e "$style" ] || continue
    name=$(basename "$style" .md)
    # Suffix with language to avoid conflicts
    target="$TARGET_DIR/${name}-${lang}.md"
    cp "$style" "$target"
    echo "  ✓ ${name}-${lang}.md"
    count=$((count+1))
  done
done

echo ""
echo "Done: $count personas installed to $TARGET_DIR"
echo ""
echo "Usage:"
echo "  1. In Claude Code, run /output-style"
echo "  2. Pick a persona (e.g. INTJ-zh or INTJ-en, or Auto-zh for auto-switching)"
echo "  3. Chat and enjoy"
echo ""
echo "Uninstall: rm $TARGET_DIR/{INTJ,INTP,ENTJ,ENTP,INFJ,INFP,ENFJ,ENFP,ISTJ,ISFJ,ESTJ,ESFJ,ISTP,ISFP,ESTP,ESFP,Auto}-{zh,en}.md"
