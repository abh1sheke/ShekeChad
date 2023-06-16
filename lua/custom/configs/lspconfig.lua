local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
    "html",
    "cssls",
    "prismals",
    "rust_analyzer",
    "svelte",
    "tailwindcss",
    "gopls",
    "jsonls",
    "svelte",
    "dockerls",
    "pyright",
    "eslint",
    "tsserver",
    "dartls",
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = function(client, bufrn)
            if lsp == "tsserver" then
                client.server_capabilities.documentFormattingProvider = false
                client.server_capabilities.documentRangeFormattingProvider = false
            end

            on_attach(client, bufrn)
        end,
        capabilities = capabilities,
    }
end
