local function open_nvim_tree()
  vim.cmd.NvimTreeToggle()
end


vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree } )
