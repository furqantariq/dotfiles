-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
        theme = "doomchad",

  telescope = { style = "borderless" },

  nvdash = {
    load_on_startup = true,

    header = {
      " ▄▄▄▄▄▄▄ ▄▄   ▄▄ ▄▄▄▄▄▄   ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄    ▄ ",
      "█       █  █ █  █   ▄  █ █       █      █  █  █ █",
      "█    ▄▄▄█  █ █  █  █ █ █ █   ▄   █  ▄   █   █▄█ █",
      "█   █▄▄▄█  █▄█  █   █▄▄█▄█  █ █  █ █▄█  █       █",
      "█    ▄▄▄█       █    ▄▄  █  █▄█  █      █  ▄    █",
      "█   █   █       █   █  █ █      ██  ▄   █ █ █   █",
      "█▄▄▄█   █▄▄▄▄▄▄▄█▄▄▄█  █▄█▄▄▄▄██▄█▄█ █▄▄█▄█  █▄▄█",
    },
  },
}

return M