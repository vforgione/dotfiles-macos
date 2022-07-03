vim.g.mapleader = ' '

vim.cmd [[ filetype plugin on ]]

vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.encoding = "utf-8"
vim.opt.expandtab = true
vim.opt.fileformat = "unix"
vim.opt.hidden = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.shell = "/usr/local/bin/bash"
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.spelllang = "en"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.syntax = "on"
vim.opt.tabstop = 2
vim.opt.termguicolors = true

vim.cmd [[
  augroup ft_py
    au BufRead,BufNewFile *.py,*.pyi set tabstop=4
    au BufRead,BufNewFile *.py,*.pyi set shiftwidth=4
  augroup END

  augroup ft_rst
    au BufRead,BufNewFile *.rst set tabstop=3
    au BufRead,BufNewFile *.rst set shiftwidth=3
  augroup END

  augroup ft_make
    au BufRead,BufNewFile Makefile set noexpandtab
  augroup END
]]

require('plugins')
require('setup')
require('keymaps')
