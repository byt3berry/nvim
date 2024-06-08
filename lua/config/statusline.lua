local modes = {
    ["n"] = "NORMAL",
    ["no"] = "NORMAL",
    ["v"] = "VISUAL",
    ["V"] = "VISUAL LINE",
    [""] = "VISUAL BLOCK",
    ["s"] = "SELECT",
    ["S"] = "SELECT LINE",
    [""] = "SELECT BLOCK",
    ["i"] = "INSERT",
    ["ic"] = "INSERT",
    ["R"] = "REPLACE",
    ["Rv"] = "VISUAL REPLACE",
    ["c"] = "COMMAND",
    ["cv"] = "VIM EX",
    ["ce"] = "EX",
    ["r"] = "PROMPT",
    ["rm"] = "MOAR",
    ["r?"] = "CONFIRM",
    ["!"] = "SHELL",
    ["t"] = "TERMINAL",
}

local function mode()
    local current_mode = vim.api.nvim_get_mode().mode
    return string.format(" %s ", modes[current_mode]):upper()
end

local function git_branch()
    local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")

    if string.len(branch) > 0 then
        return "(git:" .. branch .. ")"
    else
        return "(no git)"
    end
end

local function time()
    return "[" .. os.date("%H:%M") .. "]"
end

-- To choose highlights use `:highlight`
function statusline()
    local statusline = {
        "%#CurSearch#", -- red background
        mode(), -- current mode
        "%#DiagnosticOk#", -- green foreground
        git_branch(), -- git branch
        "%#LineNr#", -- default color
        " ",
        "%m", -- modified flag
        "%r", -- read-only flag
        "%<", -- where to truncate
        "%f", -- relative file name
        "%=", -- separator
        "%y", -- filetype
        " ",
        "%p%%", -- percentage in file
        " ",
        "%l:%c", -- position in file (row:column)
        " ",
        "%#DiagnosticOk#", -- green foreground
        time(), -- current time
        "%#LineNr#", -- default color
    }

    return table.concat(statusline, "")
end

vim.opt.laststatus=2
vim.opt.statusline=statusline()

-- Update statusline
vim.api.nvim_exec([[
augroup Statusline
autocmd!
autocmd WinEnter,BufEnter * setlocal statusline=%!v:lua.statusline()
autocmd WinLeave,BufLeave * setlocal statusline=%!v:lua.statusline()
autocmd CursorMoved,CursorMovedI * setlocal statusline=%!v:lua.statusline()
augroup END
]], false)
