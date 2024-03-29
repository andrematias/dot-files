local status_ok, project = pcall(require, "project_nvim")
if not status_ok then
	return
end

project.setup({
	active = true,
	on_config_done = nil,
	manual_mode = false,
	detection_methods = { "pattern" },
	patterns = { ".git" },
	show_hidden = true,
	silent_chdir = false,
  datapath = vim.fn.stdpath("data"),
})

local tele_status_ok, telescope = pcall(require, "telescope")
if not tele_status_ok then
	return
end

