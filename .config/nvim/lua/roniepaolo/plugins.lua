local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'nvim-tree/nvim-web-devicons',

  -- Theme
  {
    'svrana/neosolarized.nvim',
    dependencies = { 'tjdevries/colorbuddy.nvim' }
  },
  'nvim-lualine/lualine.nvim',

  -- Telescope
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',
  'nvim-telescope/telescope-file-browser.nvim',

  -- Motion
  {
    'phaazon/hop.nvim',
    branch = 'v2'
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  -- Bufferline
  'akinsho/bufferline.nvim',

  -- Colorizer
  'norcalli/nvim-colorizer.lua',

  -- Autopair
  'windwp/nvim-autopairs',

  -- LSP
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'onsails/lspkind-nvim',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp',
  'neovim/nvim-lspconfig',
  'jose-elias-alvarez/null-ls.nvim',
  'glepnir/lspsaga.nvim',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',
  {
    'numToStr/Comment.nvim',
    dependencies = { 'JoosepAlviste/nvim-ts-context-commentstring' }
  },

  -- Git
  'lewis6991/gitsigns.nvim',
  'dinhhuy258/git.nvim'
}

local opts = {
}

require("lazy").setup(plugins, opts)
