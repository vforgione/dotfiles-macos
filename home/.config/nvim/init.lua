local cmd = vim.cmd
local opt = vim.opt
local fn  = vim.fn
local g   = vim.g


-- =====================
--  CORE CONFIGURATIONS
-- =====================

cmd [[ filetype plugin on ]]

opt.autoindent = true
opt.autoread = true
opt.backspace = { "indent", "eol", "start" }
opt.encoding = "utf-8"
opt.expandtab = true
opt.fileformat = "unix"
opt.hidden = true
opt.mouse = "a"
opt.number = true
opt.shell = "/usr/local/bin/bash"
opt.shiftwidth = 2
opt.smartindent = true
opt.smarttab = true
opt.spelllang = "en"
opt.splitbelow = true
opt.splitright = true
opt.syntax = "on"
opt.tabstop = 4
opt.termguicolors = true

cmd [[
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


-- =========================
--  NERDTREE CONFIGURATIONS
-- =========================

cmd [[
  let NERDTreeShowHidden = 1
  map <C-n> :NERDTreeToggle<CR>
  au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  let g:NERDTreeGitStatusUseNerdFonts = 1
]]
