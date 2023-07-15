local M = {}

M.treesitter = {
    ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "markdown",
        "markdown_inline",
        "prisma",
        "rust",
        "go",
        "svelte",
        "astro",
        "python",
    },
    indent = {
        enable = true,
    },
}

M.mason = {
    ensure_installed = {
        "lua-language-server",
        "dockerfile-language-server",
        "stylua",
        "rust-analyzer",
        "rustfmt",
        "gofumpt",
        "gopls",
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "tailwindcss-language-server",
        "svelte-language-server",
        "prettier_d",
        "pyright",
        "autopep8",
        "eslint-lsp",
    },
}

M.nvimtree = {
    git = {
        enable = true,
    },

    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
            },
        },
    },
}

return M
