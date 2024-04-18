-- Active les numéros de lignes
vim.opt.number = true
vim.opt.relativenumber = true

-- Affiche le mode
vim.opt.showmode = true

-- Active le wrap mode et conserve l'indentation
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

-- Synchronise le clipboard de l'OS et de Neovim
vim.opt.clipboard = 'unnamedplus'

-- Affiche une preview des substitutions
vim.opt.inccommand = 'split'

-- Surligne la ligne courante
vim.opt.cursorline = true

-- Paramètres d'indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Active les couleurs de l'interface
vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

