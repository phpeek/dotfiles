--------------------------------------------------------------------------------
-- General Neovim settings and configuration
--------------------------------------------------------------------------------

local g = vim.g -- global variables
local o = vim.o -- for setting options

-- Make line numbers default
vim.wo.number = true

--------------------------------------------------------------------------------
-- General
--------------------------------------------------------------------------------
o.mouse = 'a' -- enable mouse support in all modes
o.clipboard = 'unnamedplus' -- copy/paste from system clipboard
o.swapfile = false -- do not user swap file
o.backup = false -- do not user backup file
o.undodir = os.getenv('HOME') .. '/.vim/undodir' -- for long-running undos
o.undofile = true -- save undo history
o.completeopt = 'menuone,noselect' -- autocomplete options
o.fileencoding = 'utf-8'
o.termguicolors = true

--------------------------------------------------------------------------------
-- Neovim UI
--------------------------------------------------------------------------------
o.number = true -- show line numbers
o.relativenumber = true -- show relative numbers
o.ignorecase = true -- ignore case
o.smartcase = true -- smart case
o.hlsearch = false -- do not highlight all matches on previous search
o.incsearch = true -- enable incremental search
o.cursorline = true -- highlight current line
o.wrap = false -- do not wrap lines
o.guicursor = "" -- fat cursor in all modes
o.scrolloff = 8 -- keep 8 lines at the bottom while scrolling
o.colorcolumn = "80" -- show column on 80 characters
o.signcolumn = "yes" -- keep signcolumn on by default

--------------------------------------------------------------------------------
-- Splitting
--------------------------------------------------------------------------------
o.splitbelow = true -- horizontal splits go below current window
o.splitright = true -- vertical splits go to the right of current window

--------------------------------------------------------------------------------
-- Tabs, indent
--------------------------------------------------------------------------------
o.expandtab = true -- use spaces instead of tabs
o.shiftwidth = 2 -- shift 2 spaces when tabbing
o.tabstop = 2 -- replace tab with 2 spaces
o.softtabstop = 2 -- replace soft tab with 2 spaces
o.smartindent = true -- autoindent new lines

--------------------------------------------------------------------------------
-- Performance
--------------------------------------------------------------------------------
o.timeoutlen = 300
o.updatetime = 250
o.timeout = true 
