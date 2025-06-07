anim8 = require 'libraries/anim8-master/anim8-master/anim8'
local cron = require 'libraries/cronLua_Master/cron'
local SceneryInit = require("libraries/scenery_main/scenerys")
local scenery = SceneryInit(
    {path = "scenes/copier", key = "example"},
    {path = "scenes/ramboStart", key = "ramboStart", default = true}

)

function love.load()
    scenery:load()
end

function love.update(dt)
    scenery:update(dt)
end

function love.draw()
    scenery:draw()
end


