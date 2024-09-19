local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

    use {
		"nvim-telescope/telescope.nvim", tag = "0.1.6",
		-- or                            , branch = "0.1.x",
		requires = { {"nvim-lua/plenary.nvim"} }
	}

    use { "catppuccin/nvim", as = "catppuccin" }
    use {"nvim-treesitter/nvim-treesitter-context"}
	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    use "nvim-treesitter/playground"
	use "theprimeagen/harpoon"
	use "mbbill/undotree"
	use "tpope/vim-fugitive"
	use "tpope/vim-commentary"
	use {
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			{"williamboman/mason.nvim"},
			{"williamboman/mason-lspconfig.nvim"},

			-- LSP Support
			{"neovim/nvim-lspconfig"},
			-- Autocompletion
			{"hrsh7th/nvim-cmp"},
			{"hrsh7th/cmp-buffer"},
			{"hrsh7th/cmp-path"},
			{"saadparwaiz1/cmp_luasnip"},
			{"hrsh7th/cmp-nvim-lsp"},
			{"hrsh7th/cmp-nvim-lua"},
			{"L3MON4D3/LuaSnip"},
			{"rafamadriz/friendly-snippets"},
		}
	}

    -- use "lukas-reineke/indent-blankline.nvim"
    use "eandrju/cellular-automaton.nvim" 
    use "ThePrimeagen/vim-be-good"
    use "lewis6991/gitsigns.nvim"
    use "heavenshell/vim-pydocstring"

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use "alexghergh/nvim-tmux-navigation"
    use {
        "ionide/Ionide-vim",
        ft = "fsharp",
        dependencies = {
            "neovim/nvim-lspconfig",
        },
        run = "make fsautocomplete",
    }
end)
