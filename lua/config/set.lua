-- Enable line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Hide current mode
vim.opt.showmode = false

-- Enable wrap mode and keep l'indentation
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

-- Sync clipboard between OS and Neovim
vim.opt.clipboard = "unnamedplus"

-- Preview substitutions live
vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.hlsearch = true

-- Highlight current line
vim.opt.cursorline = true

-- Indentation stuff
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Enable GUI colors
vim.opt.termguicolors = true

-- Random stuff
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
