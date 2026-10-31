#!/usr/bin/env bash
# Печатает выжимку справки по инструменту поиска для текущего проекта.
# Файл с выжимкой: .claude/local/code-search-tool.md (путь считается от папки скилла).
dir="$(cd "$(dirname "$0")/../../local" 2>/dev/null && pwd)"
if [ -n "$dir" ] && [ -f "$dir/code-search-tool.md" ]; then
  cat "$dir/code-search-tool.md"
else
  echo "не заполнено"
fi
exit 0
