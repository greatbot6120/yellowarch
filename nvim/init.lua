vim.cmd("set showmode")
vim.cmd("set number relativenumber")
vim.cmd("set autoindent")
vim.cmd("set nohlsearch")
vim.cmd("set autoindent expandtab tabstop=4 shiftwidth=4")
vim.cmd("syntax on")
vim.cmd("set backspace=2")
vim.cmd("set nuw=10")
-- vim.cmd("highlight LineNr ctermfg=yellow")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("set termguicolors")
vim.g.mapleader = " "
vim.g.vimtex_view_enabled = 0

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

local opts = {}

require("lazy").setup("plugins")

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },

  sections = {
    lualine_a = {
      {
        'mode',
        icon = {'', align='left'}
      },
    },
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "python" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
local cmp = require'cmp'

  cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),  
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        }, {
        { name = 'buffer' },
    })
  })

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fgr', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>mp', builtin.man_pages, {})
vim.keymap.set('n', '<leader>fe', ':Neotree filesystem reveal left<CR>', {})
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme github_dark]])
vim.keymap.set('n', '<C-n>', "<C-w>w")
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.opt.showmode = false
vim.keymap.set('n', '<leader>q', 'ZZ')

-- tabs
vim.keymap.set('n', '<leader>tb', ':tabnew ', {})
vim.keymap.set('n', '<leader>1', '1gt', {})
vim.keymap.set('n', '<leader>2', '2gt', {})
vim.keymap.set('n', '<leader>3', '3gt', {})
vim.keymap.set('n', '<leader>4', '4gt', {})
vim.keymap.set('n', '<leader>5', '5gt', {})
vim.keymap.set('n', '<leader>6', '6gt', {})
vim.keymap.set('n', '<leader>7', '7gt', {})
vim.keymap.set('n', '<leader>8', '8gt', {})
vim.keymap.set('n', '<leader>9', '9gt', {})

vim.keymap.set('n', '<leader>tn',':setlocal nonumber norelativenumber<CR>', {})
