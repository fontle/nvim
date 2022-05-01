-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- url: https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README
--- neovim-lua/README.md
--- https://github.com/brainfucksec/neovim-lua#readme

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

local cmd = vim.cmd
cmd [[packadd packer.nvim]]

local packer = require 'packer'

-- Add packages
return packer.startup(function()
  use 'wbthomason/packer.nvim' -- packer can manage itself

  -- Sneak / Easymotion style file navigation
  use 'phaazon/hop.nvim'

  -- File explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Indent line
  use 'lukas-reineke/indent-blankline.nvim'

  -- Transparent Effect
  use 'xiyaowong/nvim-transparent'

  -- Autopair
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- Tag viewer
  use 'simrat39/symbols-outline.nvim'

  -- Indent text object
  use 'michaeljsmith/vim-indent-object'

  -- Change surrounding: '' "" () [] {}
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'

  -- Treesitter interface
  use 'nvim-treesitter/nvim-treesitter'

  -- Color schemes
  use 'folke/tokyonight.nvim'
  use 'rafi/awesome-vim-colorschemes'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'Mofiqul/trld.nvim' -- Display lsp diagnostics top right


  -- Latex support
  use 'lervag/vimtex'

  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }
  -- Statusline
  use {
    'windwp/windline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Dashboard (start screen)
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- Fuzzy finder for quick file hunting
  use {
    'nvim-telescope/telescope.nvim',
    requires =  {{'nvim-lua/plenary.nvim'}, {'kdheepak/lazygit.nvim'}},
    config = function()
      require('telescope').load_extension('lazygit')
    end,
  }

  -- Debugger
  use 'mfussenegger/nvim-dap'
  use 'nvim-telescope/telescope-dap.nvim'
  use 'mfussenegger/nvim-dap-python'
  use 'rcarriga/nvim-dap-ui'
  use 'theHamsta/nvim-dap-virtual-text'



end)
