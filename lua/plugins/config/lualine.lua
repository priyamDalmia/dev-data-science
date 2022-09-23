local present, lualine = pcall(require, "lualine")

if not present then
  return
end

local options = {
  options = {
    theme = 'auto',
    global_status = true,

  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostic'},
    lualine_c = {'filename'},
    lualine_x = {'tabs'},
    lualine_y = {'progress'},
    lualine_z = {'location'},
  },
  
  extensions = {'nvim-tree', 'toggleterm'},
}

lualine.setup(options)
