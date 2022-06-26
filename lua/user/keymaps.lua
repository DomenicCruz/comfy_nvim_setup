-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }


-- Nvim related --

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Save on Ctrl + s --brokenish
keymap("n", "<C-S>", ":update", opts)
keymap("v", "<C-S>", "<C-C>:update<CR>", opts)
keymap("i", "<C-S>", "<C-O>:update<CR>", opts)


-- Plugins --

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts) -- Lists files in your current working directory, respects .gitignore
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts) -- Search for a string in your current working directory and get results live as you type (respecting .gitignore)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts) -- Lists open buffers in current neovim instance
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts) -- Lists available help tags and opens a new window with the relevant help info on <cr>

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')


-- Toggle term
--keymap("n", "<leader>tt", ":ToggleTerm size=40 dir=~/Desktop direction=horizontal<CR>", opts)
keymap("n", "<leader>tt", ":ToggleTerm<Enter>", opts)
keymap("t", "<leader>tt", "<Cmd>exe v:count1 . " .. "\"" .."ToggleTerm".. "\"" .. "<CR>", opts)
keymap("v", "<leader>lt", ":ToggleTermSendVisualLines<Enter>", opts)
keymap("v", "<leader>vt", ":ToggleTermSendVisualSelection<Enter>", opts)




-- Lazygit Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

