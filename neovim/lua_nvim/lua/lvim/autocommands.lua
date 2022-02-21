local vim = vim
local api = vim.api

local function nvim_create_augroups(definitions)
  for group_name, definition in pairs(definitions) do
    api.nvim_command('augroup '..group_name)
    api.nvim_command('autocmd!')
    for _, def in ipairs(definition) do
      local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
      api.nvim_command(command)
    end
    api.nvim_command('augroup END')
  end
end

local autocmds = {
  two_tab_size = {
    -- Tabs with 2 spaces for specific filetypes
    {"FileType", "html", "setlocal", [[tabstop=2 shiftwidth=2 softtabstop=2]]};
    {"FileType", "javascript", "setlocal", [[tabstop=2 shiftwidth=2 softtabstop=2]]};
    {"FileType", "javascriptreact", "setlocal", [[tabstop=2 shiftwidth=2 softtabstop=2]]};
    {"FileType", "lua", "setlocal", [[tabstop=2 shiftwidth=2 softtabstop=2]]};
    {"FileType", "css", "setlocal", [[tabstop=2 shiftwidth=2 softtabstop=2]]};
    {"FileType", "html", "setlocal", [[tabstop=2 shiftwidth=2 softtabstop=2]]};
  };
}

nvim_create_augroups(autocmds)
