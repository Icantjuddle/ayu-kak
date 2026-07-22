evaluate-commands %sh{
    common_accent="rgb:ff9940"
    common_bg="rgb:fafafa"
    common_fg="rgb:6c7680"
    common_ui="rgb:959da6"

    syntax_tag="rgb:55b4d4"
    syntax_func="rgb:f2ae49"
    syntax_entity="rgb:399ee6"
    syntax_string="rgb:86b300"
    syntax_regexp="rgb:4cbf99"
    syntax_markup="rgb:f07171"
    syntax_keyword="rgb:fa8d3e"
    syntax_special="rgb:e6ba7e"
    syntax_comment="rgb:abb0b6"
    syntax_constant="rgb:a37acc"
    syntax_operator="rgb:ed9366"
    syntax_error="rgb:f51818"

    ui_line="rgb:959da6"
    ui_panel_bg="rgb:ffffff"
    ui_panel_shadow="rgb:566069"
    ui_panel_border="rgb:f0f0f0"
    ui_gutter_normal="rgb:959da6"
    ui_gutter_active="rgb:959da6"
    ui_selection_bg="rgb:edf0f5"
    ui_selection_inactive="rgb:f2f4f7"
    ui_selection_border="rgb:e5ebf2"
    ui_guide_active="rgb:959da6"
    ui_guide_normal="rgb:959da6"

    vcs_added="rgb:99bf4d"
    vcs_modified="rgb:709ecc"
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
        declare-option str cursoralpha '80'
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
        face global PrimaryCursor ${common_bg},rgba:${syntax_entity#rgb:}80
        face global SecondaryCursor ${common_bg},rgba:${syntax_string#rgb:}80
        face global PrimaryCursorEol ${common_bg},rgba:${syntax_error#rgb:}80+B
        face global SecondaryCursorEol ${common_bg},rgba:${syntax_tag#rgb:}80
        face global LineNumbers ${common_fg},${ui_line}
        face global LineNumberCursor ${common_accent},${ui_line}
        face global LineNumbersWrapped ${common_bg},${common_bg}
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
        face global StatusCursor ${common_bg},rgba:${syntax_entity#rgb:}80
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
        face global InlayDiagnosticHint ${ui_panel_shadow}
        face global LineFlagError ${syntax_error}
        face global LineFlagWarning ${syntax_func}
        face global LineFlagInfo ${syntax_entity}
        face global LineFlagHint ${ui_panel_shadow}
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
