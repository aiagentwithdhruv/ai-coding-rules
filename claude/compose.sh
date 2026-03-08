#!/bin/bash
# Compose a custom CLAUDE.md from individual rule files
# Usage: ./compose.sh [rule numbers...] > CLAUDE.md
#
# Examples:
#   ./compose.sh                        # All rules
#   ./compose.sh 00 10 30 70 80 99      # Backend only (no frontend, no AI)
#   ./compose.sh 00 20 70 80 99         # Frontend only
#   ./compose.sh 00 50 55 60 70 80 99   # AI/ML only (RAG + agents + versioning)

set -e

RULES_DIR="$(cd "$(dirname "$0")/rules" && pwd)"

echo "# Project Instructions"
echo ""

if [ $# -eq 0 ]; then
  # No args — include all rules
  for file in "$RULES_DIR"/*.md; do
    cat "$file"
    echo ""
  done
else
  # Include only specified rules
  for num in "$@"; do
    file=$(ls "$RULES_DIR"/${num}-*.md 2>/dev/null | head -1)
    if [ -n "$file" ]; then
      cat "$file"
      echo ""
    else
      echo "# Warning: No rule found for number $num" >&2
    fi
  done
fi
