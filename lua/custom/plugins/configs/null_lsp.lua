local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- webdev stuff
  b.formatting.prettierd,
  b.formatting.prismaFmt,

  -- Lua
  b.formatting.stylua,

  -- Others
  b.formatting.autopep8,
  b.formatting.rustfmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
