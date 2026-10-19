# Private directory for Yasnippets snippets

This directory is tracked in Git as part of the dotfiles. It is the
first entry in `yas-snippet-dirs` (see `Emacs.org`), so new snippets created
with `M-x yas-new-snippet` are saved here, and these snippets override bundled
`yasnippet-snippets` ones that have the same name.

Conventions for `<mode>/`:

- the file name is the snippet key;
- every file has a `# name:` and `# key:` header;
- indent with tabs (gofmt style);
- no trailing newline, unless the snippet should insert one.
