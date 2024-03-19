vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection UP' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection DOWN' })
--
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll up centering the cursor' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll down centering the cursor' })
--
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next match centering the cursor' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Prev match centering the cursor' })
--
vim.keymap.set('i', '<C-c>', '<Esc>', { desc = 'Cancel insert mode with Ctrl+c' })
--
vim.keymap.set('n', 'Q', '<nop>', { desc = 'Prevent stupidity' })
--
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = 'Allow format file' })
--
vim.keymap.set('n', 'q:', ':q<CR>', { desc = 'Disable annoying command line thing' })
-- When text is wrapped, move by terminal rows, not lines, unless a count is provided
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })
-- Resize with arrows
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>')
-- Uses similar commands to open panel
vim.keymap.set('n', '<leader>%', ':vs<CR>', { desc = '[Window] Vertical Split' })
vim.keymap.set('n', '<leader>-', ':sp<CR>', { desc = '[Window] Horizontal Split' })
--
vim.keymap.set('n', '<leader>rw', [[:s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '[R]ename [w]ord inline' })
vim.keymap.set('n', '<leader>rW', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '[R]ename [W]ord file' })
