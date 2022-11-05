local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  window = {},
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources(
    {{ name = "nvim_lsp" }, { name = "vsnip" }}, 
    {{ name = "buffer" }}
  )
})

cmp.setup.cmdline("/", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" }
  }
})

cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" }
  }, {
    { name = "cmdline" }
  })
})

local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

local lsp = require("lspconfig")

-- best programming language
lsp["rust_analyzer"].setup { capabilities = capabilities }

-- just for school & hacking
lsp["pyright"].setup { capabilities = capabilities }

-- write programs that never segfault
lsp["clangd"].setup { capabilities = capabilities }

-- functionnal programming is hard but cute
lsp["ocamllsp"].setup { capabilities = capabilities }

