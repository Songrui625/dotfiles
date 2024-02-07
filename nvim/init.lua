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

require('basic')
require('keybindings')

plugins = {
  -- telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  },
  -- lspconfig
  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'saadparwaiz1/cmp_luasnip',
  'L3MON4d3/LuaSnip',
  -- nvim-treesitter
  { 
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "lua", "c", "python", "rust", "go" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
    end
  },
  --vscode theme
  'Mofiqul/vscode.nvim'
}

require('lazy').setup(plugins, opts)

require('lsp')

require('vscode').load('light')

