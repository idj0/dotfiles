vim.cmd([[
    filetype plugin on
]])

-- global options
vim.o.hlsearch = false
vim.o.hidden = true
vim.o.writebackup = false
vim.o.incsearch = true
vim.o.scrolloff = 10
vim.o.showmode = false
vim.o.completeopt = "menu,menuone,noselect"
vim.o.colorcolumn = '80'
vim.o.signcolumn = 'yes'
vim.o.cmdheight = 1
vim.o.updatetime = 50
vim.o.shortmess = 'actIoOsT'
vim.o.clipboard = 'unnamedplus'
vim.o.mouse = 'nicr'
vim.o.laststatus = 3
vim.o.ignorecase = true
vim.o.wildmenu = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true

-- window-local options
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.wrap = false

-- buffer-local options
vim.bo.swapfile = false
vim.bo.textwidth = 80

-- vim.opt.list = false
-- vim.opt.listchars = {
-- }
