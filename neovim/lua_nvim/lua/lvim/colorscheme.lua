NVIM_DARK_THEME = "modus-vivendi"
NVIM_LIGTH_THEME = "modus-operandi"

vim.g.modus_dim_inactive_window = 0


local function switch_konsole_profile(profile)
  local handler_which = io.popen("which konsole")
  if handler_which and string.match(handler_which:read("a"), "*/bin/konsole")  then
    local message = [[
      O emulador de terminal instalado não é o KDE Konsole.
      Não será possível aplicar o perfil correto ao terminal.
    ]]
    vim.notify(message, vim.log.levels.WARN, {
      title = "KDE Konsole not found",
      timeout = 10000
    })
    return
  end

  local pipe = "|"
  local get_window_focus = "`xdotool getwindowfocus`"
  local get_window_focus_prop = "xprop -id " .. get_window_focus
  local grep_window_id = " grep '_NET_WM_PID'" .. pipe .. " grep -oE '[[:digit:]]*$'"
  local echo_command = string.format(
    "echo org.kde.konsole-$(%s %s %s)",
    get_window_focus_prop,
    pipe,
    grep_window_id
  )

  local handler_echo = io.popen(echo_command)
  if handler_echo then
    local konsole_bus = string.gsub(handler_echo:read("a*"), "\n", "")
    local konsole_bus_session = "/Sessions/1"
    local konsole_bus_method = "org.kde.konsole.Session.setProfile"
    local qdbus_command = string.format(
      'qdbus %s %s %s "%s"',
      konsole_bus,
      konsole_bus_session,
      konsole_bus_method,
      profile
    )
    io.popen(qdbus_command)
  end
end

local current_hour = tonumber(os.date("%H", os.time()))
if not (current_hour >= 7 and current_hour <= 18) then
  vim.cmd("set background=dark")
  vim.cmd("colorscheme " ..NVIM_DARK_THEME)
  switch_konsole_profile("Dark Grid Transparent")
else
  vim.cmd("set background=light")
  vim.cmd("colorscheme " .. NVIM_LIGTH_THEME)
  switch_konsole_profile("Light Grid Transparent")
end

