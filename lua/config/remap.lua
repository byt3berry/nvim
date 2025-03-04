vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Reset search highlight
vim.keymap.set("n", "<C-c>", "<cmd>nohlsearch<CR>")

-- Move text up and down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Disable arrow keys in normal mode
allModes = {"n", "v", "s", "i", "t"}
vim.keymap.set(allModes, "<left>", "<cmd>echo \"Use h to move!!\"<CR>")
vim.keymap.set(allModes, "<right>", "<cmd>echo \"Use l to move!!\"<CR>")
vim.keymap.set(allModes, "<up>", "<cmd>echo \"Use k to move!!\"<CR>")
vim.keymap.set(allModes, "<down>", "<cmd>echo \"Use j to move!!\"<CR>")

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { desc = "Extends the window to the top" })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { desc = "Extends the window to the bottom" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Extends the window to the left" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Extends the window to the right" })

-- Navigate buffers
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Go to next buffer" })

-- Stay in indent mode when indenting
vim.keymap.set("v", ">", ">gv", { desc = "Indent line" })
vim.keymap.set("v", "<", "<gv", { desc = "Un-indent line" })

-- Fast moving in file
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move cursor and screen down 1/2 page and center cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move cursor and screen up 1/2 page and center cursor" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Move next line at the end of current line" })

-- Research stuff
vim.keymap.set("n", "n", "nzzzv", { desc = "Go to next occurrence" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Go to previous occurrence" })

vim.keymap.set("x", "<leader>p", [["_dP]])

-- Escape insertion mode
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/config/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
vim.keymap.set("n", "<leader>gl", "<cmd>CellularAutomaton game_of_life<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

