local opt = vim.opt
local g = vim.g 

-- enables spell check
vim.cmd("setlocal spell spelllang=en_us") 

-- mapleader
g.mapleader = " " 
opt.termguicolors = true

-- encoding 
opt.fileencoding = "utf-8"

-- laststatus
vim.cmd("set noshowmode")

-- disable nvim intro 
opt.shortmess:append "sI"

-- disable swpafile
opt.swapfile = false
opt.writebackup = false
opt.undofile = true
vim.cmd("set clipboard+=unnamedplus")

-- smartchars
opt.fillchars = { eob = " "}
opt.smartcase = true
opt.ignorecase = true

-- timeout len
opt.timeoutlen = 400

-- indenting and related
opt.number = true
opt.numberwidth = 2
opt.ruler = false
opt.wrap = false
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

--cursorline
opt.cul = true
opt.mouse = "a"


--disable some default plugins
local default_plugins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
   "tutor",
   "rplugin",
   "syntax",
   "synmenu",
   "optwin",
   "compiler",
   "bugreport",
   "ftplugin",
}

for _, plugin in pairs(default_plugins) do
   g["loaded_" .. plugin] = 1
end
