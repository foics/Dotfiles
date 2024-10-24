local vim = vim
local Plug = vim.fn['plug#']

vim.call("plug#begin")

-- Syntax highlighting
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate"})

-- file explorer
Plug("nvim-tree/nvim-tree.lua")

-- tree icons
Plug("nvim-tree/nvim-web-devicons")

-- vim fzf integration
Plug("nvim-lua/plenary.nvim") -- dep
Plug("nvim-telescope/telescope.nvim", { ["tag"] = "0.1.x" })

-- automatically finish ()[]{}...
Plug("windwp/nvim-autopairs")

-- Color scheme
Plug("catppuccin/nvim", { ["as"] = "catppuccin" })

-- indent guiding lines
Plug("lukas-reineke/indent-blankline.nvim")

-- embedded console
Plug("akinsho/toggleterm.nvim")

-- shows trailing spaces
Plug("ntpeters/vim-better-whitespace")

-- alignment operator
Plug("tommcdo/vim-lion")

-- easy way to view diffs
Plug("sindrets/diffview.nvim")

-- git wrapper
Plug("tpope/vim-fugitive")
-- edit ()[] and such around text
Plug("tpope/vim-surround")
-- comment operator
Plug("tpope/vim-commentary")

-- automatically sets cursor to farthest indent on tab
Plug("VidocqH/auto-indent.nvim")

-- LSP setup
Plug("williamboman/mason.nvim")
Plug("williamboman/mason-lspconfig.nvim")
Plug("neovim/nvim-lspconfig")
Plug("hrsh7th/nvim-cmp")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("L3MON4D3/LuaSnip")
Plug("VonHeikemen/lsp-zero.nvim", { ["tag"] = "v3.x" })

-- debug client for nvim with ui
Plug("mfussenegger/nvim-dap")
Plug("nvim-neotest/nvim-nio")
Plug("rcarriga/nvim-dap-ui")
Plug("theHamsta/nvim-dap-virtual-text")
Plug("jay-babu/mason-nvim-dap.nvim")

-- pretty statusline
Plug("nvim-lualine/lualine.nvim")

vim.call("plug#end")
