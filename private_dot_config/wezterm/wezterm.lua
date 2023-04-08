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
config.window_background_gradient = {
    orientation = 'Vertical',
    colors = {
      '#230022',
      '#1A002A',
    },
}
config.window_frame = {
    active_titlebar_bg = '#1A002A',
    inactive_titlebar_bg = '#1A002A',
}
config.colors = {
  tab_bar = {
    active_tab = {
      bg_color = '#4383a7',
      fg_color = '#FFFFFF',
    },
    inactive_tab = {
      bg_color = '#46007c',
      fg_color = '#FFFFFF',
    },
    inactive_tab_hover = {
      bg_color = '#58008f',
      fg_color = '#FFFFFF',
    },
    new_tab = {
      bg_color = '#46007c',
      fg_color = '#FFFFFF',
    },
    new_tab_hover = {
      bg_color = '#57008f',
      fg_color = '#FFFFFF',
    },
  }
}


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