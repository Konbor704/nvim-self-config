vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.virtualedit = "block"

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.bo.softtabstop = 2
vim.opt.cursorline = true

-- %s and result in window on the bottom
vim.opt.inccommand = "split"

-- ignores case on commands
vim.opt.ignorecase = true

vim.opt.clipboard = "unnamedplus"

vim.opt.termguicolors = true

-- cursor in the middle
vim.opt.scrolloff = 999

vim.g.mapleader = " "

-- Markdown specific settings
vim.opt.wrap = true -- Wrap text
vim.opt.breakindent = true -- Match indent on line break
vim.opt.linebreak = true -- Line break on whole words

vim.opt.spelllang = 'en_us'
vim.opt.spell = true

-- Consider - as part of keyword
vim.opt.iskeyword:append("-")

-- Disable the mouse while in nvim
vim.opt.mouse = ""

-- Folding
vim.opt.foldlevel = 20
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" -- Utilize Treesitter folds



