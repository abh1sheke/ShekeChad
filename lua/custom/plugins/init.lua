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
  ["mbbill/undotree"] = {},
  ["NvChad/ui"] = {
    override_options = {
      tabufline = {
        lazyload = true,
        overriden_modules = function()
          return require "custom.plugins.configs.tabufline"
        end,
      },
      statusline = {
        separator_style = "arrow",
      },
    },
  },
  ["windwp/nvim-autopairs"] = {
    disable = true,
  },
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "json-lsp",
        "svelte-language-server",
        "prisma-language-server",
        "astro-language-server",
        "eslint-lsp",
        "eslint_d",
        "prettier",
        "prettierd",
        "tailwindcss-language-server",

        -- go
        "gopls",

        -- python
        "pyright",
        "autopep8",

        -- rust
        "rust_analyzer",
        "rustfmt",

        -- shell
        "shfmt",
        "shellcheck",
      },
    },
  },
  ["folke/trouble.nvim"] = {
    config = function()
      require "custom.plugins.configs.trouble"
    end,
  },
}
