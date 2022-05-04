vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opt)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opt)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opt)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opt)

-- nvim-tree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", opt)
map("n", "<leader>r", "<cmd>NvimTreeRefresh<CR>", opt)
map("n", "<leader>n", "<cmd>NvimTreeFindFile<CR>", opt)

-- bufferline
map("n", "<A-n>", "<cmd>BufferLineCycleNext<CR>", opt)
map("n", "<A-p>", "<cmd>BufferLineCyclePrev<CR>", opt)
map("n", "<mymap>", "<cmd>BufferLineMoveNext<CR>", opt)
map("n", "<mymap>", "<cmd>BufferLineMovePrev<CR>", opt)
