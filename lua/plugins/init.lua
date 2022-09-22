vim.cmd "packadd packer.nvim"

local plugins = {
  ["wbthomason/packer.nvim"] = {},
  ["nvim-lua/plenary.nvim"] = { module = "plenary" },
  ["nvim-lua/popup.nvim"] = {},

   -- vimiwiki
  ["vimwiki/vimwiki"] = {
    config = function()
      require("plugins.config.others").vimwiki()
    end
  },

  -- colorscheme: nightfox
  ["EdenEast/nightfox.nvim"] = {
    config = function()
      require("plugins.config.themes").nightfox()
    end
  },
  
  -- nvim-web-devicons
  ['kyazdani42/nvim-web-devicons'] = {},

  -- file managing, telescope etc
   ["kyazdani42/nvim-tree.lua"] = {
     cmd = { "NvimTreeToggle", "NvimTreeFocus" },
     config = function()
       require "plugins.config.nvimtree"
     end,
   },

   ["nvim-telescope/telescope.nvim"] = {
     cmd = "Telescope",
     config = function()
       require "plugins.config.telescope"
     end,
  },


}

require("core.packer").run(plugins)
