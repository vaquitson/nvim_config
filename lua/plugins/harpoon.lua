return {
  "ThePrimeagen/harpoon",
  config = function()
    mark = require("harpoon.mark")
    ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", function() mark.add_file(); print("Harpoon: Marked File"); end)
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

    vim.keymap.set("n", "<C-l>", ui.nav_next)
    vim.keymap.set("n", "<C-h>", ui.nav_prev)
  end,
}
