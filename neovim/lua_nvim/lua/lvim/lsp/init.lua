local ok, _ = pcall(require, "lspconfig")
if not ok then
  return
end

require "lvim.lsp.lsp-installer"
require "lvim.lsp.setups".setup()
