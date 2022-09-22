local M  = {}

M.nightfox = function()
  local present, nightfox = pcall(require, "nightfox")

  if not present then 
    return 
  end

  options = {
    options = {
      fox = "nordfox",
      compile_path = vim.fn.stdpath("cache") .. "/nightfox",
      compile_file_suffix = "_compiled", -- Compiled file suffix
      transparent = true,
      terminal_colors = true,
      dim_inactive = true,
    }
  }

  nightfox.setup(options)
  vim.cmd("colorscheme nordfox")
end

return M 
