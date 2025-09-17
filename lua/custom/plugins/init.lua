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
    'supermaven-inc/supermaven-nvim',
    config = function()
      require('supermaven-nvim').setup {
        keymaps = {
          -- Use Shift+Tab to accept suggestion
          accept_suggestion = '<S-Tab>',
          clear_suggestion = '<C-]>',
          accept_word = '<C-j>',
        },
      }
    end,
  },
  -- {
  --   'github/copilot.vim',
  --   config = function()
  --     -- Disable the default Tab mapping
  --     vim.g.copilot_no_tab_map = true
  --
  --     vim.keymap.set('i', '<C-j>', 'copilot#Accept("\\<CR>")', {
  --       expr = true,
  --       replace_keycodes = false,
  --     })
  --
  --     -- Optional: Other useful mappings
  --     -- Accept one word at a time
  --     -- vim.keymap.set('i', '<C-l>', '<Plug>(copilot-accept-word)')
  --
  --     -- Accept one line at a time
  --     -- vim.keymap.set('i', '<C-j>', '<Plug>(copilot-accept-line)')
  --
  --     -- Cycle through suggestions
  --     -- vim.keymap.set('i', '<C-n>', '<Plug>(copilot-next)')
  --     -- vim.keymap.set('i', '<C-p>', '<Plug>(copilot-previous)')
  --
  --     -- Dismiss suggestion
  --     -- vim.keymap.set('i', '<C-e>', '<Plug>(copilot-dismiss)')
  --   end,
  -- },
  vim.keymap.set('n', '<Leader>df', ":lua vim.diagnostic.open_float(0, {scope='line'})<CR>", { desc = 'Open [D]iagnostic [F]loat' }),
}
