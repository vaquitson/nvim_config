vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)

vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename) 
vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>")

