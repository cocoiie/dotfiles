vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.clipboard = "unnamedplus" -- Sync with system clipboard

local indent = 4

vim.opt.termguicolors = true -- True color support
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.ignorecase = true -- Ignore case
vim.opt.smartcase = true -- Don't ignore case with capitals
vim.opt.mouse = 'a' -- Enable mouse mode
vim.opt.number = true -- Print line number
vim.opt.shiftwidth = indent -- Size of an indent
vim.opt.tabstop = indent -- Number of spaces tabs count for
vim.opt.cursorline = true -- Enable highlighting of the current line
vim.opt.incsearch = true -- Show the pattern while typing a search command 

if vim.g.neovide then
    -- Put anything you want to happen only in Neovide here
    vim.o.guifont = "mononoki,Menlo:h14" -- text below applies for VimScript
end