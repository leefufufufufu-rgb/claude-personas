#!/usr/bin/env bash
# claude-personas installer
# 把 styles/*.md 安装到 ~/.claude/output-styles/

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$HOME/.claude/output-styles"

echo "→ 目标目录: $TARGET_DIR"
mkdir -p "$TARGET_DIR"

count=0
for style in "$SCRIPT_DIR"/styles/*.md; do
  name=$(basename "$style")
  cp "$style" "$TARGET_DIR/$name"
  echo "  ✓ $name"
  count=$((count+1))
done

echo ""
echo "完成：已安装 $count 个人格到 $TARGET_DIR"
echo ""
echo "使用方法："
echo "  1. 在 Claude Code 中运行 /output-style"
echo "  2. 选择想要的人格（INTJ / INTP / ENTJ / ENTP）"
echo "  3. 开始对话，体验不同风格"
echo ""
echo "卸载：rm $TARGET_DIR/{INTJ,INTP,ENTJ,ENTP}.md"
