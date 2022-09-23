local present, nvimtree = pcall(require, "nvim-tree")
local map = require("core.utils").map

if not present then
  return
end

local options = {
   disable_netrw = true,
   hijack_netrw = true,
   open_on_setup = false,
   hijack_cursor = true,
   hijack_unnamed_buffer_when_opening = false,
   update_cwd = true,
   update_focused_file = {
      enable = true,
      update_cwd = false,
   },
   view = {
      adaptive_size = true,
      side = "left",
      width = 25,
      hide_root_folder = true,
   },
   git = {
      enable = true,
      ignore = true,
   },
   filesystem_watchers = {
      enable = true,
   },
   actions = {
      open_file = {
         resize_window = true,
      },
   },
   renderer = {
      highlight_git = true,
      highlight_opened_files = "name",

      indent_markers = {
         enable = true,
      },

      icons = {
         show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
         },

         glyphs = {
            default = "",
            symlink = "",
            folder = {
               default = "",
               empty = "",
               empty_open = "",
               open = "",
               symlink = "",
               symlink_open = "",
               arrow_open = "",
               arrow_closed = "",
            },
            git = {
               unstaged = "✗",
               staged = "✓",
               unmerged = "",
               renamed = "➜",
               untracked = "★",
               deleted = "",
               ignored = "◌",
            },
         },
      },
   },
}

nvimtree.setup(options)

