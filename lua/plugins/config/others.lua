local M = {}

M.vimwiki = function()
  -- vimwiki normal syntax highlighting; use other for more control.
  vim.cmd("hi VimwikiItalic term=italic ctermfg=Yellow guifg=#cc9900 gui=italic")
end

return M

