# macOS CLI Workflow Lab

A small, security-conscious command-line environment for faster navigation,
search, preview, and local development on Apple Silicon macOS.

This public repository is deliberately sanitized. It contains portable examples,
not a copy of a live workstation. It excludes credentials, logs, host identifiers,
private network topology, local model data, and operational security configuration.

## Included workflow

- `fzf` provides fuzzy history and file selection.
- `zoxide` learns frequently visited directories.
- `bat` provides syntax-highlighted previews.
- `fd` and `ripgrep` provide fast file and content search.
- `jq` provides structured JSON inspection.

## Install

```zsh
brew bundle --file ./Brewfile
source ./zsh/cli-workflow.zsh
./scripts/verify.sh
```

To load the workflow in future zsh sessions, add an explicit source line for
`zsh/cli-workflow.zsh` to your own `~/.zshrc`.

The repository uses a local pre-commit hook that blocks commits when staged
content fails `git diff --check` or a redacted `gitleaks` scan.

## Try it

- Press `Ctrl-R` to fuzzy-search shell history.
- Press `Ctrl-T` to select a file with a preview.
- Run `bat README.md` for a readable preview.
- Run `z project-name` after visiting a project directory.
- Run `zi` to select from learned directories interactively.

## Security boundary

This repository does not accept or require secrets. See [SECURITY.md](SECURITY.md)
before reporting a security issue.

## Rights and provenance

Copyright © 2026 Joseph C. Hoyt. All rights reserved. This is source-available
portfolio material, not an open-source grant. See [LICENSE](LICENSE) and
[NOTICE.md](NOTICE.md).
