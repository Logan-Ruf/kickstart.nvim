-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'github/copilot.vim',
    config = function()
      -- Disable the default Tab mapping
      vim.g.copilot_no_tab_map = true

      -- Set CTRL+g to accept Copilot suggestions
      vim.keymap.set('i', '<C-k>', 'copilot#Accept("\\<CR>")', {
        expr = true,
        replace_keycodes = false,
      })

      -- Optional: Other useful mappings
      -- Accept one word at a time
      vim.keymap.set('i', '<C-l>', '<Plug>(copilot-accept-word)')

      -- Accept one line at a time
      vim.keymap.set('i', '<C-j>', '<Plug>(copilot-accept-line)')

      -- Cycle through suggestions
      -- vim.keymap.set('i', '<C-n>', '<Plug>(copilot-next)')
      -- vim.keymap.set('i', '<C-p>', '<Plug>(copilot-previous)')

      -- Dismiss suggestion
      -- vim.keymap.set('i', '<C-e>', '<Plug>(copilot-dismiss)')
    end,
  },
}
