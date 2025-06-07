anim8 = require 'libraries/anim8-master/anim8-master/anim8'
local cron = require 'libraries/cronLua_Master/cron'
local SceneryInit = require("path.to.scenery")
local scenery = SceneryInit(
    { path = "scenes/copier.lua", key = "example"},
    {path = "scenes/ramboStart.lua", key = "ramboStart", default = true}

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


