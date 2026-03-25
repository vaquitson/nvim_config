return {
  "hrsh7th/cmp-nvim-lsp",
  event = "InsertEnter", -- lazy load on insert mode  

  dependencies = {
    -- [FIX THIS]
    'hrsh7th/cmp-nvim-lsp', -- recomendations from lsp 
    'hrsh7th/cmp-buffer', -- buffer recomendations
    'hrsh7th/cmp-path', -- relative path recomendations
    'hrsh7th/cmp-cmdline', 

    'L3MON4D3/LuaSnip', -- snipets engine
    'saadparwaiz1/cmp_luasnip', -- snipet sugestions
  },

  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    cmp.setup({
      snippet = {
        expand = function()
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-j>'] = cmp.mapping.select_next_item(),

        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),

        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "luasnip" }
      }),

    })
  end,
}
