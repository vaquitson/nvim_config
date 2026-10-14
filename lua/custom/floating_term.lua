

local state = {
  floating = {
    buf = -1,
    win = -1,
  }

}

local function f_term(opts)
  opts = opts or {}
  local width_ratio = opts.width_ratio or 0.8
  local height_ratio = opts.height_ratio or 0.8

  local columns = vim.o.columns
  local lines = vim.o.lines

  local width = math.floor(columns * width_ratio)
  local height = math.floor(lines * height_ratio)

  local row = math.floor((lines - height) / 2)
  local col = math.floor((columns - width) / 2)

  local buf = nil
  if vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true)
  end

  local win = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = width,
    height = height,
    row = row,
    col = col,
    style = 'minimal',
    border = 'rounded',
  })

  return {buf = buf, win = win}
end


vim.api.nvim_create_user_command("Fterm", function()
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = f_term {buf = state.floating.buf }
    if vim.bo[state.floating.buf].buftype ~= "terminal" then
      vim.cmd.term()
    end
  else
    vim.api.nvim_win_hide(state.floating.win)
  end
end, {})

vim.keymap.set('n', '<leader>ft', "<cmd>Fterm<CR>", {})
