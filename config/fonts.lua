local wezterm = require('wezterm')
local platform = require('utils.platform')

-- local font = 'CodeNewRoman Nerd Font Mono' -- AurulentSansM Nerd Font Mono
-- local font = 'Monaspace Radon'
local font = 'Maple Mono'
local font_size = platform().is_win and 13 or 11

return {
   font = wezterm.font(font),
   font_size = font_size,
   warn_about_missing_glyphs = false,

   --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
