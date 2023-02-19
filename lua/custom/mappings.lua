local M = {}

M.nvimtree = {
  n = {
    ["<leader>pv"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvim-tree" },
  },
}

M.telescope = {
  n = {
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "git status" },
  },
}

M.trouble = {
  n = {
    ["<leader>er"] = {
      "<cmd> TroubleToggle <CR>",
      "toggle trouble errors screen",
      opts = { silent = true, noremap = true },
    },
    ["<leader>ew"] = {
      "<cmd> TroubleToggle workspace_diagnostics <CR>",
      "toggle trouble workplace diagnostics",
      opts = { silent = true, noremap = true },
    },
    ["<leader>ed"] = {
      "<cmd> TroubleToggle document_diagnostics <CR>",
      "toggle trouble document diagnostics",
      opts = { silent = true, noremap = true },
    },
    ["<leader>el"] = {
      "<cmd> TroubleToggle loclist <CR>",
      "toggle trouble loclist",
      opts = { silent = true, noremap = true },
    },
    ["<leader>eq"] = {
      "<cmd> TroubleToggle quickfix <CR>",
      "make suggested quickfixes",
      opts = { silent = true, noremap = true },
    },
    ["gR"] = {
      "<cmd> TroubleToggle lsp_references <CR>",
      "get lsp_references",
      opts = { silent = true, noremap = true },
    },
  },
}

M.formatting = {
  n = {
    ["<leader>pp"] = { "<cmd> Prettier <CR>", "prettier formatting" },
  },
}

M.utils = {
  n = {
    ["<C-d>"] = { "<C-d>zz", "better cursor focused scrolling" },
    ["<C-u>"] = { "<C-u>zz", "better cursor focused scrolling" },
    ["n"] = { "nzzzv", "better word search scrolling" },
    ["N"] = { "Nzzzv", "better word search scrolling" },
    ["<leader>xx"] = { "<cmd>!chmod +x %<CR>", "chmod a file", opts = { silent = true } },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "string replacement but epic" },
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "move highlighted line down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "move highlighted line up" },
  },
}

return M
