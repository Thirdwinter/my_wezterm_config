local wezterm = require('wezterm')
local colors = require('colors.custom')
local gpus = wezterm.gui.enumerate_gpus()
return {

   -- color_scheme = 'Dracula',
   color_scheme = 'catppuccin Mocha',
   -- color_scheme = 'ToyChest',
   -- tab_bar_at_bottom = true,
   -- use_fancy_tab_bar = true,
   window_decorations = 'RESIZE',

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
   window_background_opacity = 0.2,
   -- win32_system_backdrop = 'Acrylic',
   -- background = {
   --    -- {
   --    --    source = { File = 'C://Users//86136//.config//wezterm//backdrops//flowers.png' },
   --    -- },
   -- {
   --       source = { Color = colors.background },
   --       height = '100%',
   --       width = '100%',
   -- opacity = 1,
   -- },
   -- },
   window_background_gradient = {
      -- Can be "Vertical" or "Horizontal".  Specifies the direction
      -- in which the color gradient varies.  The default is "Horizontal",
      -- with the gradient going from left-to-right.
      -- Linear and Radial gradients are also supported; see the other
      -- examples below
      -- orientation = {
      --    Radial = {
      --       -- Specifies the x coordinate of the center of the circle,
      --       -- in the range 0.0 through 1.0.  The default is 0.5 which
      --       -- is centered in the X dimension.
      --       cx = 0.75,
      --
      --       -- Specifies the y coordinate of the center of the circle,
      --       -- in the range 0.0 through 1.0.  The default is 0.5 which
      --       -- is centered in the Y dimension.
      --       cy = 0.75,
      --
      --       -- Specifies the radius of the notional circle.
      --       -- The default is 0.5, which combined with the default cx
      --       -- and cy values places the circle in the center of the
      --       -- window, with the edges touching the window edges.
      --       -- Values larger than 1 are possible.
      --       radius = 1.25,
      --    },
      -- },
      orientation = { Linear = { angle = -65.0 } },
      -- Specifies the set of colors that are interpolated in the gradient.
      -- Accepts CSS style color specs, from named colors, through rgb
      -- strings and more
      colors = {
         '#EEBD89',
         '#D13ABD',
         '#0f0c29',
         '#302b63',
         '#D13ABD',
         -- '#0f0c29',
         -- '#24243e',
         '#EEBD89',
         '#0f0c29',
      },

      -- Instead of specifying `colors`, you can use one of a number of
      -- predefined, preset gradients.
      -- A list of presets is shown in a section below.
      -- preset = 'Warm',

      -- Specifies the interpolation style to be used.
      -- "Linear", "Basis" and "CatmullRom" as supported.
      -- The default is "Linear".
      interpolation = 'Linear',

      -- How the colors are blended in the gradient.
      -- "Rgb", "LinearRgb", "Hsv" and "Oklab" are supported.
      -- The default is "Rgb".
      blend = 'Rgb',

      -- To avoid vertical color banding for horizontal gradients, the
      -- gradient position is randomly shifted by up to the `noise` value
      -- for each pixel.
      -- Smaller values, or 0, will make bands more prominent.
      -- The default value is 64 which gives decent looking results
      -- on a retina macbook pro display.
      noise = 64,

      -- By default, the gradient smoothly transitions between the colors.
      -- You can adjust the sharpness by specifying the segment_size and
      -- segment_smoothness parameters.
      -- segment_size configures how many segments are present.
      -- segment_smoothness is how hard the edge is; 0.0 is a hard edge,
      -- 1.0 is a soft edge.

      segment_size = 11,
      segment_smoothness = 0.8,
   },
   -- scrollbar
   -- enable_scroll_bar = false,
   -- min_scroll_bar_height = '3cell',

   -- tab bar
   enable_tab_bar = true,
   hide_tab_bar_if_only_one_tab = true,
   -- use_fancy_tab_bar = true,
   tab_max_width = 25,
   -- tab_bar_at_bottom = true,
   show_tab_index_in_tab_bar = true,
   -- switch_to_last_active_tab_when_closing_tab = true,

   -- cursor
   --   default_cursor_style = 'BlinkingBlock',
   default_cursor_style = 'BlinkingBar',
   cursor_blink_ease_in = 'Linear',
   cursor_blink_ease_out = 'Linear',
   cursor_blink_rate = 500,

   -- window
   -- window_decorations = 'INTEGRATED_BUTTONS|RESIZE',
   -- integrated_title_button_style = 'Windows',
   integrated_title_button_color = 'auto',
   --   scrollbar_visibility = 'Hidden',
   integrated_title_button_alignment = 'Right',
   initial_cols = 108,
   initial_rows = 29,
   window_padding = {
      left = '5pt',
      right = '5pt',
      top = '5pt',
      bottom = '0pt',
   },
   window_close_confirmation = 'NeverPrompt',
   window_frame = {
      active_titlebar_bg = '#181825',
      inactive_titlebar_bg = '#181825',
   },
   inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },
}
