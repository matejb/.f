# Private directory

Personal Emacs files that sit next to `Emacs.org`. Everything here is tracked in
Git as part of the dotfiles.

- `snippets/`: yasnippet snippets, one directory per major mode (e.g.
  `go-mode/`). Loaded via `yas-snippet-dirs` in `Emacs.org`, ahead of the
  bundled `yasnippet-snippets` collection. See `snippets/README.md` for the
  conventions.
- `local/`: legacy Spacemacs configuration layers (`apache`, `general`,
  `goplus`, `phpplus`, `react`). `Emacs.org` does not load them; they are kept
  only for reference.
