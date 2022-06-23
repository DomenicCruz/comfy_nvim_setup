
-- illuminate can also be disabled for various filetypes using the following:
vim.g.Illuminate_ftblacklist = {'alpha', 'NvimTree'}
-- You can cycle through these document highlights with these mappings:
vim.api.nvim_set_keymap('n', '<a-n>', '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', {noremap=true})
vim.api.nvim_set_keymap('n', '<a-p>', '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', {noremap=true})
