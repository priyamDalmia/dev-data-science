-- import the map function from core.init
local map = require("core.utils").map

-- STANDARD
-- NORMAL mode
-- quit, save, buffer, and more.
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>qq", ":q!<CR>")
map("n", "<leader>x", ":x<CR>")
map("n", "<leader>t", ":bdelete<CR>")
map("n", "<leader>tt", ":bdelete!<CR>")

-- switch buffers 
map("n", "<leader><Tab>", ":bn<CR>")
map("n", "<leader><Tab><Tab>", ":bp<CR>")

-- move lines up and down 
map("n", "<S-j>", ":move .+1<CR>==")
map("n", "<S-k>", ":move .-2<CR>==")

-- INSERT mode
-- <Esc> using ';;'
map("i", ";;", "<ESC>")


-- Nvimtree shortcuts
map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("n", "<leader>ee", ":NvimTreeFocus<CR>")

-- Telescope shortcuts 
map("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
map("n", "<leader>fb", "<cmd> Telescope buffers <CR>")
map("n", "<leader>tk", "<cmd> Telescope keymaps <CR>")
