local keymap = vim.keymap

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

keymap.set("v", "\"", "c\"\"<Esc>P")
keymap.set("v", "'", "c''<Esc>P")
keymap.set("v", "{", "c{}<Esc>P")
keymap.set("v", "(", "c()<Esc>P")
keymap.set("n", "<M-S-k>", "yyP")
keymap.set("n", "<M-S-j>", "yyp")

keymap.set("", "<Space>j", "10jzz")
keymap.set("", "<Space>k", "10kzz")
keymap.set("n", "<Space>;", "$a;<Esc>")
keymap.set("n", "<Space>,", "$a,<Esc>")

keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<M-k>", ":m '>-2<CR>gv=gv")

