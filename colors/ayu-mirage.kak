evaluate-commands %sh{
    common_accent="rgb:ffcc66"
    common_accent_on="rgb:805500"
    common_bg="rgb:242936"
    common_fg="rgb:cccac2"
    common_ui="rgb:707a8c"
    syntax_tag="rgb:5ccfe6"
    syntax_func="rgb:ffd173"
    syntax_entity="rgb:73d0ff"
    syntax_string="rgb:d5ff80"
    syntax_regexp="rgb:95e6cb"
    syntax_markup="rgb:f28779"
    syntax_keyword="rgb:ffad66"
    syntax_special="rgb:ffdfb3"
    syntax_comment="rgb:6e7c8e"
    syntax_constant="rgb:dfbfff"
    syntax_operator="rgb:f29e74"
    syntax_error="rgb:ff6666"
    ui_line="rgb:1a1f29"
    ui_panel_bg="rgb:282e3b"
    ui_panel_shadow="rgb:000000"
    ui_panel_border="rgb:171b24"
    ui_gutter_normal="rgb:4d535e"
    ui_gutter_active="rgb:767c85"
    ui_selection_bg="rgb:313949"
    ui_selection_inactive="rgb:2a3a50"
    ui_selection_border="rgb:736950"
    ui_guide_active="rgb:484d59"
    ui_guide_normal="rgb:363c48"
    vcs_added="rgb:87d96c"
    vcs_modified="rgb:80bfff"
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
        face global variable ${common_fg}
        face global module ${syntax_string}
        face global identifier ${common_fg}
        face global function ${syntax_func}
        face global string ${syntax_string}
        face global keyword ${syntax_keyword}
        face global operator ${syntax_operator}
        face global attribute ${syntax_func}
        face global comment ${syntax_comment}
        face global documentation ${syntax_comment}
        face global meta ${syntax_special}
        face global builtin ${syntax_markup}+b

        # and markup
        face global title ${syntax_string}
        face global header ${syntax_string}
        face global bold ${syntax_markup}+b
        face global italic ${syntax_markup}+i
        face global mono ${syntax_regexp}
        face global block ${syntax_regexp}
        face global link ${syntax_entity}+u
        face global bullet ${syntax_func}
        face global list ${common_fg}

        # and built in faces
        face global Default ${common_fg},${common_bg}
        face global PrimarySelection default,rgba:409fff40
        face global SecondarySelection default,rgba:409fff21
        face global PrimaryCursor ${common_accent_on},${common_accent}
        face global SecondaryCursor ${common_bg},${syntax_entity}
        face global PrimaryCursorEol ${common_bg},${syntax_error}+B
        face global SecondaryCursorEol ${common_bg},${syntax_regexp}
        face global LineNumbers ${ui_gutter_normal},${common_bg}
        face global LineNumberCursor ${ui_gutter_active},${common_bg}
        face global LineNumbersWrapped ${ui_line},${common_bg}
        face global MenuForeground ${common_fg},${ui_selection_bg}
        face global MenuBackground ${common_fg},${ui_panel_bg}
        face global MenuInfo ${syntax_func},${ui_panel_bg}
        face global Information ${common_fg},${ui_panel_bg}
        face global InlineInformation ${common_fg},${ui_panel_bg}
        face global Error ${syntax_error},${ui_panel_bg}+f
        face global StatusLine ${common_fg},${ui_panel_border}
        face global StatusLineMode ${common_accent},${ui_panel_border}+b
        face global StatusLineInfo ${syntax_tag},${ui_panel_border}
        face global StatusLineValue ${syntax_constant},${ui_panel_border}
        face global StatusCursor ${common_accent_on},${common_accent}
        face global Prompt ${common_accent},${ui_panel_border}
        face global MatchingChar ${common_fg},${ui_selection_border}+bu
        face global BufferPadding ${common_bg},${common_bg}
        face global Whitespace ${ui_guide_normal}+f
        face global WrapMarker ${syntax_comment},${common_bg}

        face global InlayHint +d@type
        face global InlayCodeLens +d@type
        face global parameter +i@value
        face global enum ${syntax_tag}
        face global InlayDiagnosticError ${syntax_error}
        face global InlayDiagnosticWarning ${common_accent}
        face global InlayDiagnosticInfo ${syntax_tag}
        face global InlayDiagnosticHint ${common_ui}
        face global LineFlagError ${syntax_error}
        face global LineFlagWarning ${common_accent}
        face global LineFlagInfo ${syntax_tag}
        face global LineFlagHint ${common_ui}
        face global DiagnosticError ,,${syntax_error}+c
        face global DiagnosticWarning ,,${common_accent}+c
        face global DiagnosticInfo ,,${syntax_tag}+c
        face global DiagnosticHint ,,${common_ui}+c
        face global DiagnosticTagDeprecated +s
        face global DiagnosticTagUnnecessary +d
        face global Reference default,rgba:409fff26
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
