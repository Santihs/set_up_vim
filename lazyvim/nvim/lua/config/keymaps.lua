-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- INFO: Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("i", "jj", "<Esc>")
keymap.set("i", "JJ", "<Esc>")
keymap.set("", "<Space>j", "10jzz")
keymap.set("", "<Space>k", "10kzz")
keymap.set("n", "<Space>;", "$a;<Esc>")
keymap.set("n", "<Space>,", "$a,<Esc>")
keymap.set("n", "G", "Gzz")
keymap.set("n", "<C-o>", "<C-o>zz")

keymap.set("n", "<M-l>", ":BufferLineCycleNext<CR>")
-- keymap.set("n", "<leader>tp", ":BufferLineCyclePrev<CR>")
keymap.set("n", "<M-h>", ":BufferLineCyclePrev<CR>")
-- keymap.set("n", "<M-c>", ":BufferKill<CR>")

-- INFO: telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- INFO: Select words
keymap.set("v", '"', 'c""<Esc>P')
keymap.set("v", "'", "c''<Esc>P")
keymap.set("v", "{", "c{}<Esc>P")
keymap.set("v", "(", "c()<Esc>P")
keymap.set("n", "<M-S-k>", "yyP")
keymap.set("n", "<M-S-j>", "yyp")
-- keymap.set("v", "[", "c[]<Esc>P")
keymap.set("i", "<F2>", '<cmd>lua require("renamer").rename()<cr>', opts)
keymap.set("n", "<leader>rn", '<cmd>lua require("renamer").rename()<cr>', opts)
keymap.set("v", "<leader>rn", '<cmd>lua require("renamer").rename()<cr>', opts)

keymap.set("n", "q", "<nop>")

keymap.set("v", "p", '"_dP', opts)

keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
