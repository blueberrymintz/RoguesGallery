-- for setting defaults
local config = require ('configs/tileMakerConfig')

local function tileChecker(tile)
    -- check if tile has valid properties
    if tile == nil then
        print("tileChecker: Expected: Integer, Provided: Nil, Setting to default")
        return 1
    end
    if type(tile) ~= nil and type(tile) ~= "Integer" then
        print("tileChecker: Expected: Integer, Provided: " .. type(tile).. "Setting to default")
        return false
    end
end
local function imageChecker(imagePath)
    if imagePath == nil or type(imagePath) ~= "string" then
        print("imageChecker: Expected: String, Provided: " .. type(imagePath) .. ", Setting to default")
        return false
    end
end
function TileMaker(xPos, yPos, imagePath, ...)
    -- runs checkers, to see if the parameters are valid
    tileChecker(xPos)
    tileChecker(yPos)
    imageChecker(imagePath)
    -- if paramaters are invalid, set to defaults saved in config
    if not tileChecker(xPos) then xPos = 1 end
    if not tileChecker(yPos) then yPos = 1 end
    if not imageChecker(imagePath) then imagePath = defaults.defaultTileImage end
    local tile = {
        xPos = xPos,
        yPos = yPos,
        image = imagePath, -- Placeholder for tile image
    }
end
