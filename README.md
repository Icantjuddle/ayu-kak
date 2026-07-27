# ayu-kak
[Ayu](https://github.com/dempfi/ayu) colorscheme ported to the [Kakoune](https://github.com/mawww/kakoune) editor.

> If you can think of a better assignment of the colors; feel free to open an issue / PR.

## Install
If you have use [plug.kak](https://github.com/andreyorst/plug.kak) then you can simply add to your config 

```
plug "icantjuddle/ayu-kak" theme
```

Otherwise just link the theme files into your config's color sub-folder.

```bash
ln -s $XDG_CONFIG_HOME//kak/colors/ $PWD/colors/*
```

## Integrations

All three variants use explicit RGB colors, including foregrounds and backgrounds, so they do not depend on the terminal palette. They also provide:

- `kak-lsp` semantic tokens, inlay hints and code lenses, inline and gutter diagnostics, reference highlighting, and syntax-highlighted information boxes.
- [`kak-tree-sitter`](https://git.sr.ht/~hadronized/kak-tree-sitter) `ts_*` faces, following the same conventions as [kakoune-tree-sitter-themes](https://git.sr.ht/~hadronized/kakoune-tree-sitter-themes).
- `kak-rainbower` bracket colors.
- Palette options compatible with `kak-one`: `fg`, `bg`, `subbg`, `lightred`, `darkred`, `green`, `lightorange`, `darkorange`, `blue`, `magenta`, `cyan`, `comment`, `cursoralpha`, `selectionalpha`, and `menuselection`.

To use the additional semantic token faces, map `enum` and `parameter` in your `kak-lsp` configuration.

## Thanks!
- Ayu colorscheme : [dempfi/ayu](https://github.com/dempfi/ayu)
- Kakoune editor : [mawww/kakoune](https://github.com/mawww/kakoune)
