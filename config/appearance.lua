local wezterm = require('wezterm')
local colors = require('colors.custom')
local gpus = wezterm.gui.enumerate_gpus()
return {

   color_scheme = 'Dracula',
   -- color_scheme = 'catppuccin Mocha',
   -- color_scheme = 'ToyChest',
   -- tab_bar_at_bottom = true,
   use_fancy_tab_bar = true,
   -- window_decorations = 'RESIZE',

   enable_scroll_bar = false,
   term = 'xterm-256color',
   animation_fps = 60,
   max_fps = 60,
   webgpu_preferred_adapter = gpus[1],
   front_end = 'WebGpu', -- WebGpu OpenGL
   webgpu_power_preference = 'HighPerformance',

   --color scheme
   --colors = colors,
   --color_scheme = 'Gruvbox dark, medium (base16)',

   -- background
   window_background_opacity = 1,
   -- win32_system_backdrop = 'Acrylic',
   background = {
      {
         source = { File = 'C://Users//86136//.config//wezterm//backdrops//flowers.png' },
      },
      {
         source = { Color = colors.background },
         height = '100%',
         width = '100%',
         opacity = 0.9,
      },
   },

   -- scrollbar
   -- enable_scroll_bar = false,
   -- min_scroll_bar_height = '3cell',

   -- tab bar
   -- enable_tab_bar = true,
   -- hide_tab_bar_if_only_one_tab = false,
   -- use_fancy_tab_bar = true,
   tab_max_width = 25,
   -- tab_bar_at_bottom = true,
   -- show_tab_index_in_tab_bar = false,
   -- switch_to_last_active_tab_when_closing_tab = true,

   -- cursor
   --   default_cursor_style = 'BlinkingBlock',
   default_cursor_style = 'BlinkingBar',
   cursor_blink_ease_in = 'Linear',
   cursor_blink_ease_out = 'Linear',
   cursor_blink_rate = 500,

   -- window
   window_decorations = 'INTEGRATED_BUTTONS|RESIZE',
   integrated_title_button_style = 'Windows',
   integrated_title_button_color = 'auto',
   --   scrollbar_visibility = 'Hidden',
   integrated_title_button_alignment = 'Right',
   initial_cols = 98,
   initial_rows = 24,
   window_padding = {
      left = '0pt',
      right = '0pt',
      top = '0pt',
      bottom = '0pt',
   },
   window_close_confirmation = 'NeverPrompt',
   window_frame = {
      active_titlebar_bg = '#181825',
      inactive_titlebar_bg = '#181825',
   },
   inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },
}
