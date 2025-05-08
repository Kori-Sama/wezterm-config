local Config = require("config")

local platform = require('utils.platform')
local wallpaper_dir = ""
if platform.is_win then
    wallpaper_dir = require('wezterm').home_dir .. '/Pictures/wallpaper/'
else
    wallpaper_dir = require('wezterm').config_dir .. '/backdrops/'
end

require('utils.backdrops')
-- :set_focus('#000000')
    :set_images_dir(wallpaper_dir)
    :set_images()
    :random()

require('events.left-status').setup()
require('events.right-status').setup({ date_format = '%a %H:%M:%S' })
require('events.tab-title').setup({ hide_active_tab_unseen = false, unseen_icon = 'circle' })
require('events.new-tab-button').setup()

return Config:init()
    :append(require('config.appearance'))
    :append(require('config.bindings'))
    :append(require('config.domains'))
    :append(require('config.fonts'))
    :append(require('config.general'))
    :append(require('config.launch')).options
