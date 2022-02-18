local ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not ok then
  return
end

-- Register handler to be called when install servers
lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = require("lvim.lsp.handlers").on_attach,
  }

  if server.name == "sumneko_lua" then
    local sumneko_opts = require("lvim.lsp.settings.sumneko_lua")
	 	opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  -- Set options to the server
  server:setup(opts)
end)