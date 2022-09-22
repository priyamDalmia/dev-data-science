local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
  return 
end

local options = {
    ensure_installed = {
      "lua",
      "python",
      "cuda",
      "sql",
      "markdown",
      "html",
      "yaml",
    },
    highlight = {
      enable = true,
      use_languagetree = true,
    },
    indent = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
    }
  }

treesitter.setup(options)


-- enable folds
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
