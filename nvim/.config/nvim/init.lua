local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt
local Plug = vim.fn['plug#']

opt.mouse = "a"
opt.encoding = "utf-8"

opt.scrolloff = 3
opt.number = true
opt.relativenumber = true
opt.numberwidth = 1

opt.updatetime=300

opt.list = true
opt.listchars = "tab:»-,space:·"
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.autoread = true

opt.backup = false
opt.writebackup = false

opt.signcolumn = "yes"

cmd([[ highlight LineNR ctermfg=DarkGrey ]])

vim.call('plug#begin', '~/.config/nvim/plugged')
  Plug 'neoclide/coc.nvim'
vim.call('plug#end')
