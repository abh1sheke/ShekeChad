local present, null_ls = pcall(require, "null-ls")

if not present then
    return
end

local b = null_ls.builtins

local sources = {
    b.formatting.prettierd.with {
        filetypes = {
            "html",
            "markdown",
            "css",
            "typescript",
            "javascript",
            "typescriptreact",
            "javascriptreact",
            "json",
        },
    },
    b.formatting.stylua,
}

null_ls.setup {
    debug = true,
    sources = sources,
}
