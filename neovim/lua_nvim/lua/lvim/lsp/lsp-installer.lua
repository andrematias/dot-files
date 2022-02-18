local ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not ok then
  return
end

-- Register handler to be called when install servers
lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = require("lvim.lsp.handlers").on_attach,
  }

  -- Set options to the server
  server:setup(opts)
end)
