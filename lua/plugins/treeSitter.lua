return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local ts = require("nvim-treesitter")

    ts.setup({
      install_dir = vim.fn.stdpath("data") .. "/site",
    })

    ts.install({
      "c",
      "go",
      "html",
      "python",
      "javascript",
      "rust"
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
      "c",
      "go",
      "html",
      "python",
      "javascript",
      "rust"
    },
      callback = function(ev)
        vim.treesitter.start(ev.buf)
        vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
