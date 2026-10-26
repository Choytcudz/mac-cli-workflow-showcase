#!/bin/sh
set -eu

required='fzf zoxide bat fd rg jq'
missing=''

for command_name in $required; do
  if ! command -v "$command_name" >/dev/null 2>&1; then
    missing="$missing $command_name"
  fi
done

if [ -n "$missing" ]; then
  printf 'Missing required commands:%s\n' "$missing" >&2
  exit 1
fi

zsh -n "$(dirname "$0")/../zsh/cli-workflow.zsh"
printf '%s\n' alpha beta gamma | fzf --filter=alp | grep -qx alpha
printf 'echo workflow_ok\n' | bat --plain --color=never --language=sh | grep -q workflow_ok

printf 'VERIFY_PASS\n'
