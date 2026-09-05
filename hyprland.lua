-- Neon Nebula theme overrides. Applied only when this theme is active,
-- on top of the neutral ~/.config/hypr/looknfeel.lua.

local active_border_color = { colors = { "rgba(35e6ffcc)", "rgba(ff4fd8aa)", "rgba(8d79c3aa)" }, angle = 45 }
local inactive_border_color = "rgba(6f639e88)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  decoration = {
    shadow = {
      color = "rgba(cb5dff33)",
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },

    groupbar = {
      col = {
        active = "rgba(35e6ff33)",
      },
    },
  },
})
