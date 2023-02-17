require "custom.set"

local M = {}

M.ui = {
  theme = "decay",
}

M.plugins = require "custom.plugins.init"

M.mappings = require "custom.mappings"

return M
