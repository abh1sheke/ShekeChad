return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.null_lsp"
    end,
  },
  ["MunifTanjim/prettier.nvim"] = {
    after = "null-ls.nvim",
    config = function()
      require "custom.plugins.configs.prettier"
    end,
  },
}
