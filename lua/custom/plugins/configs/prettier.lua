local present, prettier = pcall(require, "prettier")

if not present then
  return
end

prettier.setup {
  bin = "prettierd",
  filetypes = {
    "css",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
    "svelte",
    "astro",
    "tailwindcss",
  },
}
