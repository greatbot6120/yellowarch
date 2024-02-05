vim.cmd("set showmode")
vim.cmd("set number relativenumber")
vim.cmd("set autoindent")
vim.cmd("set nohlsearch")
vim.cmd("set autoindent expandtab tabstop=2 shiftwidth=2")
vim.cmd("syntax on")
vim.cmd("set backspace=2")
vim.cmd("set nuw=10")
-- vim.cmd("highlight LineNr ctermfg=yellow")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("set termguicolors")
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

  {
    'projekt0n/github-nvim-theme',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('github-theme').setup({
         
        options = {

          transparent = true,
        },

      })

      vim.cmd('colorscheme github_dark')
    end,
  },

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",  
    },

    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            -- '.git',
            -- '.DS_Store',
            -- 'thumbs.db',
          },
          never_show = {},
        },
      }
    }
    
  }

}

local opts = {}

require("lazy").setup(plugins, opts)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fgr', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>mp', builtin.man_pages, {})
vim.keymap.set('n', '<leader>fe', ':Neotree filesystem reveal left<CR>', {})
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme github_dark]])

-- prova
