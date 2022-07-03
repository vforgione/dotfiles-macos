return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }

  use { 'neoclide/coc.nvim', branch = 'release' }
  
  use 'ojroques/nvim-hardline'
  
  use 's1n7ax/nvim-terminal'
end)
