vim.opt.wrap = false -- hace que neovim no haga un werrap del texto
-- set tab to 4 spaces

vim.api.nvim_create_user_command('ToggleWrap', function()
  vim.opt.wrap = not vim.opt.wrap:get()
  if vim.opt.wrap:get() then
    print("Wrap activado")
  else
    print("Wrap desactivado")
  end
end, {})


vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.keymap.set("n", "<leader>ww", "<C-w>v<C-w>l")
vim.keymap.set("n", "<leader>wd", "<C-w>c")

vim.keymap.set("n", "<C-j>", "<C-e>") -- scrol down
vim.keymap.set("n", "<C-k>", "<C-y>") -- scroll up

vim.keymap.set("n", "<C-Left>", "<C-w>h") -- move window left
vim.keymap.set("n", "<C-Right>", "<C-w>l") -- move window right
vim.keymap.set("n", "<C-Up>", "<C-w>k") -- move window up 
vim.keymap.set("n", "<C-Down>", "<C-w>j") -- move window up 

vim.keymap.set({"n", "i"}, "<C-s>", "<cmd>w<CR>") -- save file

vim.keymap.set("i", "<C-j>", "<Down>") -- vim key insert mode
vim.keymap.set("i", "<C-k>", "<Up>") -- vim key insert mode

vim.keymap.set("i", "<C-h>", "<Left>") -- vim key insert mode
vim.keymap.set("i", "<C-l>", "<Right>") -- vim key insert mode

vim.keymap.set("i", "<C-BS>", "<C-w>") -- delete word

-- handle the copy to system clipboard --
vim.keymap.set("v", "<C-c>", '"+y')

-- handel the single quotes ' '
vim.keymap.set("v", "'", "di''<Left><Esc>p")
vim.keymap.set("i", "'", "''<Left>")

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")
