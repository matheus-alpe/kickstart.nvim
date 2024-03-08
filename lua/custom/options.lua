vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.spell = true
vim.opt.spelllang = 'en'
vim.opt.spelloptions = { 'camel', 'noplainbuffer' }
vim.opt.wrap = false
vim.opt.sidescrolloff = 8
vim.opt.confirm = true -- ask for confirmation instead of erroring
vim.opt.shortmess:append { W = true, C = true, c = true }
vim.opt.wildmode = 'longest:full,full' -- complete the longest common match, and allow tabbing the results to fully complete them
vim.opt.pumblend = 10
-- vim.opt.signcolumn = 'yes:2'
vim.opt.relativenumber = true
