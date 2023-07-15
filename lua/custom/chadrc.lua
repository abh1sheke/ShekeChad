---ty@pe ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.lazy_nvim = {
  performance = {
    rtp = {
      disabled_plugins = vim.tbl_filter(function(name)
        return string.sub(name, 1, 5) ~= "netrw"
      end, require("plugins.configs.lazy_nvim").performance.rtp.disabled_plugins),
    },
  },
}

M.ui = {
    theme = "catppuccin",
    theme_toggle = { "catppuccin", "one_light" },

    hl_override = highlights.override,
    hl_add = highlights.add,

    tabufline = {
        overriden_modules = function()
            return {
                buttons = function()
                    return ""
                end,
            }
        end,
    },

    statusline = {
        seperator_style = "arrow",
    },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
