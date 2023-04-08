local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}

config.enable_scroll_bar = true
config.font = wezterm.font_with_fallback {
  'Fira Code',
  'FiraCode NF',
  'FiraMono',
  'Jetbrains Mono',
}
config.font_size = 10
config.color_scheme = 'Dracula'

-- keybinds, mostly inspired by konsole
config.keys = {
  {
    key = 't',
    mods = 'CTRL|SHIFT',
    action = act.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = 'w',
    mods = 'CTRL',
    action = act.CloseCurrentTab { confirm = true }
  },
  {
    key = 'RightArrow',
    mods = 'SHIFT',
    action = act.ActivateTabRelative(1)
  },
  {
    key = 'LeftArrow',
    mods = 'SHIFT',
    action = act.ActivateTabRelative(-1)
  },
  {
    key = 'w',
    mods = 'CTRL|SHIFT',
    action = act.ActivateTabRelative(-1)
  }
}

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
-- Windows specific configuration
  config.default_prog = { 'nu' }
else
-- Linux specific configuration
  
end

return config