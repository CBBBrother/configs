---------------------------
--  awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gears = require("gears")
local gsh = require("gears.shape")
local gfs = require("gears.filesystem")
local theme_path = os.getenv("HOME") .. "/.config/awesome/awesomium"

local theme = {}

theme.font          = "RobotoMono Nerd Font 14"

theme.bg_normal     = "#333333"
theme.bg_focus      = "#282828"
theme.bg_urgent     = "#FFFFFF"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#FCFCFC"
theme.fg_focus      = "#CCCBCA"
theme.fg_urgent     = "#FF78A3"
theme.fg_minimize   = "#FFFFFF"

theme.useless_gap   = 0
theme.border_width  = dpi(1)
theme.border_normal = "#141414"
theme.border_focus  = "#93B6FF"

theme.taglist_fg_focus  = "#FFE0A0"
theme.taglist_bg_focus  = "#282828"
theme.taglist_bg_normal = "#333333"
theme.taglist_font = theme.font
theme.taglist_spacing = 5

theme.titlebar_bg_normal = "#333333"
theme.titlebar_bg_focus  = "#282828"
theme.titlebar_font = theme.font

theme.tasklist_font = theme.font
theme.tasklist_only_icon = true

theme.notification_border_color = theme.border_focus

theme.menu_submenu_icon = theme_path.."/submenu.png"
theme.menu_height = dpi(20)
theme.menu_width  = dpi(130)

-- {{{ hotkey cheat sheet
theme.hotkeys_description_font = "RobotoMono Nerd Font 9"
theme.hotkeys_font = "RobotoMono Nerd Font 10"
theme.hotkeys_group_margin = dpi(12)
theme.hotkeys_label_bg = "#8ec07cd8"
theme.hotkeys_modifiers_fg = "#8ec07cd8"
theme.hotkeys_shape = function(cr,w,h)
    gears.shape.rounded_rect(cr,w,h,theme.border_radius)
end
-- }}}

-- Define the image to load
theme.titlebar_close_button_normal = theme_path.."/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = theme_path.."/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = theme_path.."/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = theme_path.."/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = theme_path.."/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = theme_path.."/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = theme_path.."/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = theme_path.."/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = theme_path.."/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = theme_path.."/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = theme_path.."/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = theme_path.."/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = theme_path.."/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = theme_path.."/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = theme_path.."/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = theme_path.."/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme_path.."/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme_path.."/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = theme_path.."/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = theme_path.."/titlebar/maximized_focus_active.png"

theme.wallpaper = theme_path.."/background.jpg"

-- | ICONS | --
theme.telegram = theme_path .. "/icons/apps/telegram.png"

-- | MPD | --
theme.mpd_prev  = theme_path .. "/icons/mpd/mpd_prev.png"
theme.mpd_next  = theme_path .. "/icons/mpd/mpd_next.png"
theme.mpd_stop  = theme_path .. "/icons/mpd/mpd_stop.png"
theme.mpd_pause = theme_path .. "/icons/mpd/mpd_pause.png"
theme.mpd_play  = theme_path .. "/icons/mpd/mpd_play.png"
theme.mpd_sepr  = theme_path .. "/icons/mpd/mpd_sepr.png"
theme.mpd_sepl  = theme_path .. "/icons/mpd/mpd_sepl.png"
 
-- | BAT | --
theme.widget_ac = theme_path .. "/icons/ac.png"
theme.widget_battery = theme_path .. "/icons/battery.png"
theme.widget_battery_low = theme_path .. "/icons/battery_low.png"
theme.widget_battery_empty = theme_path .. "/icons/battery_empty.png"

-- You can use your own layout icons like this:
theme.layout_floating  = theme_path.."/layouts/floating.png"
theme.layout_tilebottom = theme_path.."/layouts/tilebottom.png"
theme.layout_tileleft   = theme_path.."/layouts/tileleft.png"
theme.layout_tile = theme_path.."/layouts/tile.png"
theme.layout_tiletop = theme_path.."/layouts/tiletop.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
