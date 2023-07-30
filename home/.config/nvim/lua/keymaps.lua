local map = vim.api.nvim_set_keymap

map('n', '<leader>t', ':lua NTGlobal["terminal"]:toggle()<cr>', {})
map('n', '<leader>0', ':NvimTreeToggle<cr>', {})
