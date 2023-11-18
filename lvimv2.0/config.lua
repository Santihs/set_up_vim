-- INFO: Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
require('santihs.keymap')
require('santihs.options')
require('santihs.colorscheme')

lvim.log.level                           = "warn"
lvim.format_on_save.enabled              = true
lvim.transparent_window                  = true

lvim.leader                              = "space"

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}
lvim.builtin.treesitter.rainbow.enable   = true
lvim.builtin.treesitter.highlight.enable = true
lvim.builtin.treesitter.auto_install     = true
lvim.builtin.treesitter.autotag          = true
lvim.builtin.treesitter.filetypes        = {
  'html',
  'javascript',
  'typescript',
  'javascriptreact',
  'typescriptreact', 'svelte',
  'vue', 'tsx', 'jsx', 'rescript',
  'xml',
  'php',
  'markdown',
  'glimmer', 'handlebars', 'hbs'
}

local lualine_config                     = require('santihs.plugins.lualine').lualine_config()
local todo_config                        = require('santihs.plugins.todocomment').todo_setup()

lvim.plugins                             = {
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = todo_config,
  },
  {
    "mrjones2014/nvim-ts-rainbow",
  },
  {
    'filipdutescu/renamer.nvim',
    branch = 'master',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "tpope/vim-surround"
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
      require('lualine').setup(lualine_config)
    end
  },
  { 'github/copilot.vim' },
  { 'ThePrimeagen/vim-be-good' }
}
