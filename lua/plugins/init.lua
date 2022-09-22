vim.cmd "packadd packer.nvim"

local plugins = {
  ["wbthomason/packer.nvim"] = {},
  ["nvim-lua/plenary.nvim"] = { module = "plenary" },
  ["nvim-lua/popup.nvim"] = {},
}

require("core.packer").run(plugins)
