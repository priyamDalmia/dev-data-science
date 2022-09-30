-- import the map function from core.init
local map = require("core.utils").map

-- STANDARD
-- NORMAL mode
-- quit, save, buffer, and more.
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>qq", ":q!<CR>")
map("n", "<leader>x", ":x<CR>")
map("n", "<leader>t", ":bp<bar>sp<bar>bn<bar>bd<CR>")
map("n", "<leader>tt", ":bdelete!<CR>")

-- switch buffers 
map("n", "<Tab>", ":bn<CR>")
map("n", "<S-Tab>", ":bp<CR>")

-- create/move between windows
map("n", "<A-n>", "<C-w>v")
map("n", "<A-h>", "<C-w>h")
map("n", "<A-l>", "<C-w>l")
map("n", "<A-j>", "<C-w>j")
map("n", "<A-k>", "<C-w>k")

-- move lines up and down 
map("n", "<S-j>", ":move .+1<CR>==")
map("n", "<S-k>", ":move .-2<CR>==")

-- INSERT mode
-- <Esc> using ';;'
map("i", ";;", "<ESC>")

-- keymap - Nvimtree
map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("n", "<leader>ee", ":NvimTreeFocus<CR>")

-- keymaps - Telescope 
map("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
map("n", "<leader>fb", "<cmd> Telescope buffers <CR>")
map("n", "<leader>fk", "<cmd> Telescope keymaps <CR>")
map("n", "<leader>fm", "<cmd> Telescope marks <CR>")

-- keymaps - LSP
map("n", "gd", ":lua vim.lsp.buf.definition()<CR>")
map("n", "gD", ":lua vim.lsp.buf.declaration()<CR>")
map("n", "gr", ":lua vim.lsp.buf.references()<CR>")
map("n", "gh", ":lua vim.lsp.buf.hover()<CR>")
map("n", "gs", ":lua vim.lsp.buf.signature_help()<CR>")
map("n", "H", ":lua vim.lsp.buf.hover()<CR>")
map("n", "ge", ":lua vim.diagnostic.open_float()<CR>")

map("n", "<A-`>", ":ToggleTerm<CR>")
map("t", ";;", [[<C-\><C-n>]])
