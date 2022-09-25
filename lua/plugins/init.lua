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

  -- completion engines 
  -- coq
  ["ms-jpq/coq_nvim"] = {
    branch = "coq",
    event = "InsertEnter",
    opt = true,
    run = ":COQdeps",
    config = function()
      require("plugins.config.coq").setup()
    end,
    requires = {
      { "ms-jpq/coq.artifacts", branch = "artifacts" },
      { "ms-jpq/coq.thirdparty", branch = "3p", module = "coq_3p" },
    },
  disable = false,
  },

  -- lsp + configs 
  ['williamboman/nvim-lsp-installer'] = {},

  ["neovim/nvim-lspconfig"] = {
    opt = true,
    event = "BufRead",
    wants = { "nvim-lsp-installer" },
    config = function()
      require("plugins.config.lsp").setup()
    end,
    requires = {
      "williamboman/nvim-lsp-installer",
    },
  },

  -- nvim treesitter 
  ["nvim-treesitter/nvim-treesitter"] = {
    module = "nvim-treesitter",
    run = ":TSUpdate",
    event = {"BufRead", "BufNewFile"},
    cmd = { 
      "TSInstall",
      "TSBufEnable",
      "TSBufDisable",
      "TSEnable",
      "TSDisable",
      "TSModuleInfo",}, 
    config = function()
      require "plugins.config.treesitter"
    end,
  },
  -- indent lines
  ["lukas-reineke/indent-blankline.nvim"] = {
    config = function()
      require("plugins.config.others").indentlines()
    end
  },
  ["windwp/nvim-autopairs"] = {
    config = function()
      require("plugins.config.others").autopairs()
    end
  },
  -- toggle term
  ["akinsho/toggleterm.nvim"] = {
    config = function()
      require("plugins.config.others").toggleterm()
    end
  },
  
  ["nvim-lualine/lualine.nvim"] = {
    config = function()
      require "plugins.config.lualine"
    end
  },

}

require("core.packer").run(plugins)
