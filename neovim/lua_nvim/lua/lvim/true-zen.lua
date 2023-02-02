local status_ok, configs = pcall(require, "true-zen")
if not status_ok then
  return
end

configs.setup {
  modes = {
    ataraxis = {
      padding = {
        left = 10,
        right = 10,
        bottom = 0,
        top = 0
      }
    }
  },
  integrations = {
      tmux = false,
      lualine = true
    },
}
