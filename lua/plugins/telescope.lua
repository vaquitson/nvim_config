return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  
  config = function()
    local telescope = require("telescope.builtin")
    vim.keymap.set('n', '<leader><leader>', telescope.find_files, {})

    vim.keymap.set('n', '<leader>tg', telescope.live_grep, {})
    vim.keymap.set('n', '<leader>tm', telescope.marks, {})
    vim.keymap.set('n', '<leader>tf', telescope.current_buffer_fuzzy_find, {})
    vim.keymap.set('n', '<leader>ts', telescope.grep_string, {})

  end
}
