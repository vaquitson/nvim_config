return {
  -- see: https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      
      -- this do not install the tree siter parsers, onestly not shure what this does
      ensure_instaled = {
        "c", 
        "go",
        "lua", 
        "html",
        "rust"
      },

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      indentation = {
        enable = true,
      }
    })
  end
}
