# Portable interactive CLI helpers for zsh.
# Source this file from an interactive zsh session.

if command -v fzf >/dev/null 2>&1; then
  export FZF_DEFAULT_OPTS='--height=45% --layout=reverse --border'
  export FZF_CTRL_T_OPTS="--walker-skip .git,node_modules,target --preview 'bat --color=always --style=numbers --line-range=:500 {} 2>/dev/null || ls -la {}'"
  source <(fzf --zsh)
fi

if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi
