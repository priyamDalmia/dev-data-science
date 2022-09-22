local M = {}

M.vimwiki = function()
  -- vimwiki normal syntax highlighting; use other for more control.
  vim.cmd("hi VimwikiItalic term=italic ctermfg=Yellow guifg=#cc9900 gui=italic")
end

M.indentlines = function()
  local present, ilines = pcall(require, "indent_blankline")

  if not present then
    return
  end

  vim.opt.list = true
  vim.opt.listchars:append "space:⋅"
  vim.opt.listchars:append "eol:↴"

  local options = {
    show_current_context = true,
    show_current_context_start = true,
  }
  ilines.setup(options)
end

return M

