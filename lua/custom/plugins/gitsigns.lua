-- Here is a more advanced example where we pass configuration
-- options to `gitsigns.nvim`. This is equivalent to the following lua:
--    require('gitsigns').setup({ ... })
--
-- See `:help gitsigns` to understand what the configuration keys do
return { -- Adds git related signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('gitsigns').setup {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 3000,
      },
    }
    vim.keymap.set('n', ']g', ':Gitsigns next_hunk<CR>', { desc = 'Next [G]it hunk' })
    vim.keymap.set('n', '[g', ':Gitsigns prev_hunk<CR>', { desc = 'Prev [G]it hunk' })
    vim.keymap.set('n', '<leader>gd', ':Gitsigns diffthis<CR>', { desc = '[G]it [D]iff this' })
  end,
}
