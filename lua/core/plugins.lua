local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

  --auto completion
  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

 -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/mason.nvim" -- simple to use language server installer
  use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
  use 'jose-elias-alvarez/null-ls.nvim' -- LSP diagnostics and code actions

  --depugging
  -- DAP
  use 'mfussenegger/nvim-dap'
  --DAP-UI
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  --neovim-codicons
  use'ChristianChiarulli/neovim-codicons'
  --virtual-text
  use 'theHamsta/nvim-dap-virtual-text'
  -- python_dap
  use 'mfussenegger/nvim-dap-python'

-- Telescope
  use 'nvim-telescope/telescope.nvim'

-- treesitter
use{
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
}

-- ts-rainbow
use 'p00f/nvim-ts-rainbow'

-- webdev icons
use 'nvim-tree/nvim-web-devicons'

--autopairs
use "windwp/nvim-autopairs"

--comment.nvim
use 'numToStr/Comment.nvim'
--nvim-ts-context-commentstring
use 'JoosepAlviste/nvim-ts-context-commentstring'

-- nvim-trees
use 'nvim-tree/nvim-tree.lua'

--lualine
use "nvim-lualine/lualine.nvim"

--gitsigns
use {
  'lewis6991/gitsigns.nvim',
  -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
}

--bufferline
use"akinsho/bufferline.nvim"

-- vim-bbye
use"moll/vim-bbye"

--toggleterm
use "akinsho/toggleterm.nvim"

--impatient
use 'lewis6991/impatient.nvim'
  -------colorschemes-------
  use { "catppuccin/nvim", as = "catppuccin" }
  use { "bluz71/vim-nightfly-colors", as = "nightfly" }
  use 'folke/tokyonight.nvim'
  use 'xiyaowong/transparent.nvim'
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

