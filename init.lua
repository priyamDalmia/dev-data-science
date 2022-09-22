-- simple neovim configuration

-- initialize helpers and standard options
require "core.utils"
require "core.options"

-- load packer and plugins 
require("core.packer").bootstrap()
require "plugins"


-- initialize the keymaps 
require "core.keymaps"

-- extra settings go here
