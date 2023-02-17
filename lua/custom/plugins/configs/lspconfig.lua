-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "cssls",
  "clangd",
  "pyright",
  "marksman",
  "gopls",
  "astro",
  "eslint",
  "rust_analyzer",
  "svelte",
  "tailwindcss",
  "tsserver",
  "yamlls",
  "prismals",
  "bashls"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
