-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local discipline = require("santihs.discipline")
discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local gs = require("gitsigns")

keymap.set("n", "<space>pv", ":Ex<CR>")

-- INFO: increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- INFO: delete a word backwards
keymap.set("n", "dw", "vb_d")

-- INFO: Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

keymap.set("i", "jj", "<Esc>")
keymap.set("i", "JJ", "<Esc>")
keymap.set("", "<Space>j", "10jzz")
keymap.set("", "<Space>k", "10kzz")
keymap.set("n", "<Space>;", "$a;<Esc>")
keymap.set("n", "<Space>,", "$a,<Esc>")
keymap.set("n", "G", "Gzz")
keymap.set("n", "<C-o>", "<C-o>zz")

-- INFO: tabs
keymap.set("n", "<M-l>", "<Cmd>BufferLineCycleNext<CR>")
keymap.set("n", "<M-h>", "<Cmd>BufferLineCyclePrev<CR>")

-- INFO: rename
keymap.set("n", "<F2>", ":IncRename ")

-- INFO: Diagnostic
keymap.set("n", "gl", function()
  vim.diagnostic.goto_prev()
end, opts)

-- info: Select words
keymap.set("v", '"', 'c""<Esc>P')
keymap.set("v", "'", "c''<Esc>P")
keymap.set("v", "{", "c{}<Esc>P")
keymap.set("v", "(", "c()<Esc>P")
keymap.set("n", "<M-S-k>", "yyP")
keymap.set("n", "<M-S-j>", "yyp")
-- keymap.set("v", "[", "c[]<Esc>P")

keymap.set("n", "q", "<nop>")

keymap.set("v", "p", '"_dP', opts)

keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- INFO: Git
keymap.set("n", "<leader>gp", gs.preview_hunk_inline)
