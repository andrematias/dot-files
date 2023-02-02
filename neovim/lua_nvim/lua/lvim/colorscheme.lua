NVIM_DARK_THEME = "modus-vivendi"
NVIM_LIGTH_THEME = "moduls-operandi"

vim.g.modus_dim_inactive_window = 0


local function switch_konsole_profile(profile)
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
if current_hour > 18 then
  vim.cmd("set background=dark")
  vim.cmd("colorscheme " ..NVIM_DARK_THEME)

  switch_konsole_profile("Dark Grid Transparent")

else
  vim.cmd("set background=light")
  vim.cmd("colorscheme " .. NVIM_LIGTH_THEME)
  switch_konsole_profile("Light Grid Transparent")
end

