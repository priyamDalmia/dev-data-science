local lsp_installer_servers = require "nvim-lsp-installer.servers"
local utils = require "core.utils"
local map = require("core.utils").map
local M = {}

M.keymaps = function(client, bufnr)
  local keymap = vim.api.nvim_set_keymap
  local buf_keymap = vim.api.nvim_buf_set_keymap

  -- lsp keymaps 
  map("n", "[d", "<cmd>lua vim.lsp.buf.hover()<CR>")

end

M.setup = function(servers, options)
  for server_name, _ in pairs(servers) do
    local server_available, server = lsp_installer_servers.get_server(server_name)

    if server_available then
      server:on_ready(function()
        local opts = vim.tbl_deep_extend("force", options, servers[server.name] or {})
        -- For coq.nvim
        local present, coq = pcall(require, "coq")

        if present then
          server:setup(coq.lsp_ensure_capabilities(opts))
        end

        if not present then
          server:setup(opts)
        end
      end)

      if not server:is_installed() then
        server:install()
      end
    else
    end
  end
end

return M
