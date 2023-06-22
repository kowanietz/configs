local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.scrollback_lines = 500

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.macos_window_background_blur = 30

config.integrated_title_button_alignment = "Right"

config.initial_cols = 90
config.initial_rows = 30

config.window_background_opacity = 0.85

config.font = wezterm.font_with_fallback {
  {
    family = 'Fira Code',
    weight = 'Medium',
    harfbuzz_features = { 'calt=0', 'clig=1', 'liga=1' },
  },
  { family = 'Terminus', weight = 'Bold' },
  'Noto Color Emoji',
}

config.font_size = 15

config.colors = {
  foreground = '#a9b1d6',
  background = '#11121D',

  cursor_bg = '#a9b1d6',
  cursor_fg = '#11121D',
  cursor_border = '#7da6ff',

  scrollbar_thumb = '#222222',

  split = '#444444',

  ansi = {
    '#32344a',
    '#f7768e',
    '#9ece6a',
    '#e0af68',
    '#7aa2f7',
    '#ad8ee6',
    '#449dab',
    '#787c99',
  },
  brights = {
    '#444b6a',
    '#ff7a93',
    '#b9f27c',
    '#ff9e64',
    '#7da6ff',
    '#bb9af7',
    '#0db9d7',
    '#acb0d0',
  }
}

config.window_close_confirmation = 'NeverPrompt'

config.keys = {
  {
    key = 'r',
    mods = 'CMD',
    action = wezterm.action.SplitPane {
      direction = 'Left',
      size = { Percent = 50 },
    },
  },
  {
    key = 'e',
    mods = 'CMD',
    action = wezterm.action.SplitVertical {domain = 'CurrentPaneDomain'},
  },
  {
    key = 's',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
  {
    key = 'v',
    mods = 'CTRL',
    action = wezterm.action.PasteFrom 'Clipboard',
  }
}

return config

