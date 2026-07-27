# ayu-kak

[Ayu](https://github.com/dempfi/ayu) colorscheme ported to the [Kakoune](https://github.com/mawww/kakoune) editor.

## Install

If you have use [plug.kak](https://github.com/andreyorst/plug.kak) then you can simply add to your config 

```
plug "icantjuddle/ayu-kak" theme
```

Otherwise just link the theme files into your config's color sub-folder.

```bash
ln -s $XDG_CONFIG_HOME/kak/colors/ $PWD/colors/*
```

## Integrations

- `kak-lsp` semantic tokens, inlay hints and code lenses, inline and gutter diagnostics, reference highlighting, and syntax-highlighted information boxes.
- [`kak-tree-sitter`](https://git.sr.ht/~hadronized/kak-tree-sitter) `ts_*` faces
- `kak-rainbower` bracket colors.

To use the additional semantic token faces, map `enum` and `parameter` in your `kak-lsp` configuration.

## Thanks!

- [`kak-lsp`](https://github.com/kakoune-lsp/kakoune-lsp)
- [`kak-tree-sitter`](https://git.sr.ht/~hadronized/kak-tree-sitter)
- Ayu colorscheme : [dempfi/ayu](https://github.com/dempfi/ayu)
- Kakoune editor : [mawww/kakoune](https://github.com/mawww/kakoune)
