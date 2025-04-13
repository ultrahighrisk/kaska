vim.api.nvim_create_augroup("kaska", { clear = true })

local function setup(options)
    vim.o.background = 'dark'

    local bg = "#080A08"
    local trs = "none"
    bg = options.transparent and trs or bg

    local pri = "#7bb54a"
    local sec = "#6aa888"
    local pam = "#ffffff"
    local vis = "#292929"
    local bgs = "#1a1a1a"
    local fg = "#cfcfcf"
    local cmt = "#555555"
    local str = sec
    local sct = "#aaaaaa"
    local sctb = bgs
    local num = "#fc5a4c"
    local nn = "#303030"
    local idnt = pam
    local cur = fg
    local srch = pri
    local vr = pri
    local fn = "#dbdad5"
    local stmt = "#e37336"

    local gadd = "#88db2a"
    local gdiff = "#f5c449"
    local gremv = "#eb3e31"

    local warning = "#f7e697"
    local error = "#f06559"
    local info = "#cccccc"
    local hint = "#a187ff"

    vim.api.nvim_set_hl(0, "Normal", { fg = fg, bg = bg })
    vim.api.nvim_set_hl(0, "Visual", { bg = vis })
    vim.api.nvim_set_hl(0, "Search", { fg = srch, bg = bg })
    vim.api.nvim_set_hl(0, "CurSearch", { fg = bgs, bg = srch })
    vim.api.nvim_set_hl(0, "NonText", { fg = nn })
    vim.api.nvim_set_hl(0, "ColorColumn", { fg = bgs, bg = bgs })
    vim.api.nvim_set_hl(0, "Special", { fg = fn })
    vim.api.nvim_set_hl(0, "Directory", { fg = vr })
    vim.api.nvim_set_hl(0, "Operator", { fg = sct })
    vim.api.nvim_set_hl(0, "Parentheses", { fg = sct })
    vim.api.nvim_set_hl(0, "Delimiter", { fg = sct })
    vim.api.nvim_set_hl(0, "String", { fg = str })
    vim.api.nvim_set_hl(0, "Boolean", { fg = num })
    vim.api.nvim_set_hl(0, "Number", { fg = num })
    vim.api.nvim_set_hl(0, "Comment", { fg = cmt, bg = bg })
    vim.api.nvim_set_hl(0, "Identifier", { fg = idnt })
    vim.api.nvim_set_hl(0, "Statement", { fg = stmt })
    vim.api.nvim_set_hl(0, "Function", { fg = fn })
    vim.api.nvim_set_hl(0, "@variable.parameter", { fg = cur })
    vim.api.nvim_set_hl(0, "@variable", { fg = cur })
    vim.api.nvim_set_hl(0, "Type", { fg = vr })
    vim.api.nvim_set_hl(0, "Character", { fg = fn })
    vim.api.nvim_set_hl(0, "Constant", { fg = fn })
    vim.api.nvim_set_hl(0, "StatusLineNC", { fg = vr, bg = bgs })
    vim.api.nvim_set_hl(0, "StatusLine", { fg = vr, bg = sctb })
    vim.api.nvim_set_hl(0, "VertSplit", { fg = sctb })
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = sctb })
    vim.api.nvim_set_hl(1, "MatchParen", { fg = bg, bg = pri })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = bgs })
    vim.api.nvim_set_hl(0, "CursorLineNr", { bg = bgs })
    vim.api.nvim_set_hl(0, "@string.special.url", { fg = num })
    vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = srch, bg = bg })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = sctb })
    vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = fg, bg = bgs })
    vim.api.nvim_set_hl(0, "TelescopePreviewLine", { fg = sctb, bg = srch })
    vim.api.nvim_set_hl(0, "EndOfBuffer", {})
    vim.api.nvim_set_hl(0, "DiffChange", {})
    vim.api.nvim_set_hl(0, "DiffAdd", {})
    vim.api.nvim_set_hl(0, "ModeMsg", { fg = pri })
    vim.api.nvim_set_hl(0, "ErrorMsg", { fg = error })
    vim.api.nvim_set_hl(0, "Question", { fg = sec })

    vim.api.nvim_set_hl(0, "Changed", { fg = gdiff })
    vim.api.nvim_set_hl(0, "Added", { fg = gadd })
    vim.api.nvim_set_hl(0, "Removed", { fg = gremv })

    vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = warning })
    vim.api.nvim_set_hl(0, "DiagnosticError", { fg = error })
    vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = info })
    vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = hint })
end

return { setup = function(options) setup(options or {}) end }
