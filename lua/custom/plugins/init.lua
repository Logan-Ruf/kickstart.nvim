-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  vim.keymap.set('i', '<C-Enter>', function()
    vim.lsp.buf.code_action {
      context = {
        only = {
          'source.organizeImports',
          'source.addImport',
        },
      },
    }
  end, { desc = 'Organize/Add Imports (Insert mode)' }),
}
