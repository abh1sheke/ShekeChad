---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "nightowl",
  theme_toggle = { "nightowl", "one_light" },

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
