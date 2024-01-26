vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.virtualedit = "block"

vim.opt.textwidth = 90
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.bo.softtabstop = 2
vim.opt.cursorline = true

-- %s and result in window on the bottom
vim.opt.inccommand = "split"

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.clipboard = "unnamedplus"

vim.opt.termguicolors = true

-- cursor in the middle
vim.opt.scrolloff = 999

vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Markdown specific settings
vim.opt.wrap = false -- Wrap text
vim.opt.breakindent = true -- Match indent on line break
vim.opt.linebreak = true -- Line break on whole words
vim.opt.spelllang = {'pl', 'en_gb'}
vim.opt.spell = true

-- Consider - as part of keyword
vim.opt.iskeyword:append("-")

-- Disable the mouse while in nvim
vim.opt.mouse = ""

-- Folding
vim.opt.foldlevel = 20
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- Utilize Treesitter folds

-- Appearance
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

-- Backspace
vim.opt.backspace = "indent,eol,start"


