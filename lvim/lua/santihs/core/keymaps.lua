local keymap = vim.keymap
-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )
keymap.set("", "<Space>j", "10j")
keymap.set("", "<Space>k", "10k")
keymap.set("n", "<Space>n;", "$a;<Esc>")
keymap.set("n", "<Space>,", "$a,<Esc>")

-- keymap.set("n", "<leader>sv", "<C-w>v")
-- keymap.set("n", "<leader>sh", "<C-w>s")
-- keymap.set("n", "<leader>se", "<C-w>=")
-- keymap.set("n", "<leader>sx", ":close<CR>")

keymap.set("n", "<leader>v", ":vsplit<CR>")
keymap.set("n", "<leader>tx", ":BufferKill<CR>")
keymap.set("n", "<leader>tn", ":BufferLineCycleNext<CR>")
keymap.set("n", "<M-l>", ":BufferLineCycleNext<CR>")
keymap.set("n", "<leader>tp", ":BufferLineCyclePrev<CR>")
keymap.set("n", "<M-h>", ":BufferLineCyclePrev<CR>")

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<Cr>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
