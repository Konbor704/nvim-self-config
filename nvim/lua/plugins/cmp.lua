-- Auto-completion / Snippets
return {
  -- https://github.com/hrsh7th/nvim-cmp
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    -- Snippet engine & associated nvim-cmp source
    -- https://github.com/L3MON4D3/LuaSnip
    "L3MON4D3/LuaSnip",
    -- https://github.com/saadparwaiz1/cmp_luasnip
    "saadparwaiz1/cmp_luasnip",

    -- LSP completion capabilities
    -- https://github.com/hrsh7th/cmp-nvim-lsp
    "hrsh7th/cmp-nvim-lsp",
    "onsails/lspkind.nvim",

    -- Additional user-friendly snippets
    -- https://github.com/rafamadriz/friendly-snippets
    "rafamadriz/friendly-snippets",
    -- https://github.com/hrsh7th/cmp-buffer
    "hrsh7th/cmp-buffer",
    -- https://github.com/hrsh7th/cmp-path
    "hrsh7th/cmp-path",
    -- https://github.com/hrsh7th/cmp-cmdline
    "hrsh7th/cmp-cmdline",
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local lspkind = require("lspkind")

    vim.opt.completeopt = "menu,menuone,noselect"

    cmp.setup({
      formatting = {
        format = lspkind.cmp_format({
          mode = "symbol", -- show only symbol annotations
          maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
          -- can also be a function to dynamically calculate max width such as
          -- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
          ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
          show_labelDetails = true, -- show labelDetails in menu. Disabled by default

          -- The function below will be called before any actual modifications from lspkind
          -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
          before = function(entry, vim_item)
            return vim_item
          end,
        }),
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(),     -- previous suggestion
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),   -- previous suggestion
        ["<C-j>"] = cmp.mapping.select_next_item(),     -- next suggestion
        ["<Tab>"] = cmp.mapping.select_next_item(),     -- next suggestion
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),        -- scroll backward
        ["<C-f>"] = cmp.mapping.scroll_docs(4),         -- scroll forwarda
        ["<C-Space>"] = cmp.mapping.complete(),         -- show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(),                -- clear completion window
        ["<CR>"] = cmp.mapping.confirm({ select = false }), -- confirm selection
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- lsp
        { name = "luasnip" }, -- snippets
        { name = "buffer" }, -- text within current buffer
        { name = "path" }, -- file system paths
        { name = "neorg" },
      }),
    })
  end,
}
