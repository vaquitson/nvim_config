return {
  'stevearc/dressing.nvim',
  opts = {},
  config = function()
    require("dressing").setup({
      input = {
        enable = true,
        border = "rounded"
      }
    })
  end 
}
