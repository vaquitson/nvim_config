vim.api.nvim_create_user_command("DelMarks", function()
  vim.api.nvim_cmd({
    cmd = 'delmarks',
    args = { 'A-Z' },
  },
    {})

  vim.api.nvim_cmd({
    cmd = 'delmarks',
    args = { 'a-z' },
  },
    {})


  vim.api.nvim_cmd({
    cmd = 'delmarks',
    args = { '0-9' },
  },
  {})


  vim.api.nvim_cmd({
    cmd = 'delmarks',
    args = { '^.[]<>' },
  },
  {})

  vim.api.nvim_cmd({
    cmd = 'delmarks',
    args = { '\"' },
  },
  {})

  print("Marks Deleted")
end,
{}
)


