evaluate-commands %sh{
    common_accent="rgb:ffcc66"
    common_bg="rgb:1f2430"
    common_fg="rgb:cbccc6"
    common_ui="rgb:707a8c"
    syntax_tag="rgb:5ccfe6"
    syntax_func="rgb:ffd580"
    syntax_entity="rgb:73d0ff"
    syntax_string="rgb:bae67e"
    syntax_regexp="rgb:95e6cb"
    syntax_markup="rgb:f28779"
    syntax_keyword="rgb:ffa759"
    syntax_special="rgb:ffe6b3"
    syntax_comment="rgb:5c6773"
    syntax_constant="rgb:d4bfff"
    syntax_operator="rgb:f29e74"
    syntax_error="rgb:ff3333"
    ui_line="rgb:191e2a"
    ui_panel_bg="rgb:232834"
    ui_panel_shadow="rgb:141925"
    ui_panel_border="rgb:101521"
    ui_gutter_normal="rgb:707a8c"
    ui_gutter_active="rgb:707a8c"
    ui_selection_bg="rgb:34455a"
    ui_selection_inactive="rgb:2d3b4d"
    ui_selection_border="rgb:3c526a"
    ui_guide_active="rgb:707a8c"
    ui_guide_normal="rgb:707a8c"
    vcs_added="rgb:a6cc70"
    vcs_modified="rgb:77a8d9"
    vcs_removed="rgb:f27983"

    echo "
        declare-option str fg '${common_fg#rgb:}'
        declare-option str bg '${common_bg#rgb:}'
        declare-option str subbg '${ui_panel_bg#rgb:}'
        declare-option str lightred '${syntax_error#rgb:}'
        declare-option str darkred '${vcs_removed#rgb:}'
        declare-option str green '${syntax_string#rgb:}'
        declare-option str lightorange '${syntax_func#rgb:}'
        declare-option str darkorange '${syntax_operator#rgb:}'
        declare-option str blue '${syntax_entity#rgb:}'
        declare-option str magenta '${syntax_constant#rgb:}'
        declare-option str cyan '${syntax_tag#rgb:}'
        declare-option str comment '${syntax_comment#rgb:}'
        declare-option str cursoralpha 'ff'
        declare-option str selectionalpha '40'
        declare-option str menuselection '${ui_selection_bg#rgb:}'

        # then we map them to code
        face global value ${syntax_constant}
        face global type ${syntax_entity}
        face global variable ${syntax_regexp}
        face global module ${syntax_special}
        face global identifier ${syntax_regexp}
        face global function ${syntax_func}
        face global string ${syntax_string}
        face global keyword ${syntax_keyword}
        face global operator ${syntax_operator}
        face global attribute ${syntax_tag}
        face global comment ${syntax_comment}
        face global documentation ${syntax_comment}
        face global meta ${syntax_markup}
        face global builtin ${syntax_special}+b

        # and markup
        face global title ${syntax_tag}
        face global header ${syntax_entity}
        face global bold ${syntax_error}+b
        face global italic ${syntax_func}+i
        face global mono ${syntax_string}
        face global block ${syntax_keyword}
        face global link ${syntax_constant}+u
        face global bullet ${syntax_operator}
        face global list ${syntax_markup}

        # and built in faces
        face global Default ${common_fg},${common_bg}
        face global PrimarySelection ${common_fg},rgba:${syntax_entity#rgb:}40+fg@Default
        face global SecondarySelection ${common_fg},rgba:${syntax_string#rgb:}40+fg@Default
        face global PrimaryCursor ${common_bg},rgba:${syntax_entity#rgb:}ff
        face global SecondaryCursor ${common_bg},rgba:${syntax_string#rgb:}ff
        face global PrimaryCursorEol ${common_bg},rgba:${syntax_error#rgb:}ff+B
        face global SecondaryCursorEol ${common_bg},rgba:${syntax_tag#rgb:}ff
        face global LineNumbers ${common_fg},${ui_line}
        face global LineNumberCursor ${common_accent},${ui_line}
        face global LineNumbersWrapped ${ui_line},${ui_line}
        face global MenuForeground ${common_fg},${ui_selection_bg}
        face global MenuBackground ${common_fg},${ui_selection_inactive}
        face global MenuInfo ${syntax_string},${ui_selection_inactive}
        face global Information ${common_fg},${ui_panel_bg}
        face global InlineInformation ${common_fg},${ui_panel_bg}
        face global Error ${syntax_error}+f
        face global StatusLine ${vcs_removed},${ui_panel_border}
        face global StatusLineMode ${vcs_added},${ui_panel_border}+b
        face global StatusLineInfo ${vcs_modified},${ui_panel_border}
        face global StatusLineValue ${vcs_modified},${ui_panel_border}
        face global StatusCursor ${common_bg},rgba:${syntax_entity#rgb:}ff
        face global Prompt ${vcs_added},${ui_panel_border}
        face global MatchingChar ${common_fg},${ui_selection_border}+bu
        face global BufferPadding ${common_bg},${common_bg}
        face global Whitespace ${ui_guide_normal}+f
        face global WrapMarker ${syntax_comment},${common_bg}

        face global InlayHint +d@type
        face global InlayCodeLens +d@type
        face global parameter +i@variable
        face global enum ${syntax_tag}
        face global InlayDiagnosticError ${syntax_error}
        face global InlayDiagnosticWarning ${syntax_func}
        face global InlayDiagnosticInfo ${syntax_entity}
        face global InlayDiagnosticHint ${common_fg}
        face global LineFlagError ${syntax_error}
        face global LineFlagWarning ${syntax_func}
        face global LineFlagInfo ${syntax_entity}
        face global LineFlagHint ${common_fg}
        face global DiagnosticError ,,${syntax_error}+c
        face global DiagnosticWarning ,,${syntax_func}+c
        face global DiagnosticInfo ,,${syntax_entity}+c
        face global DiagnosticHint ,,${common_fg}+c
        face global DiagnosticTagDeprecated +s
        face global DiagnosticTagUnnecessary +d
        face global Reference ${common_fg},${ui_selection_border}
        face global ReferenceBind +u@Reference
        face global InfoDefault Information
        face global InfoBlock block
        face global InfoBlockQuote block
        face global InfoBullet bullet
        face global InfoHeader header
        face global InfoLink link
        face global InfoLinkMono header
        face global InfoMono mono
        face global InfoRule comment
        face global InfoDiagnosticError InlayDiagnosticError
        face global InfoDiagnosticHint InlayDiagnosticHint
        face global InfoDiagnosticInformation InlayDiagnosticInfo
        face global InfoDiagnosticWarning InlayDiagnosticWarning

        try %{ set-option global rainbow_colors ${syntax_func} ${syntax_constant} ${syntax_entity} }
    "
}
