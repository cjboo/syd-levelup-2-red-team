require 'fruit'
require 'presets'


FruitFactory = {}
FruitFactory.__index = FruitFactory

function FruitFactory:new()
	local newFruitFactory = {
		
	}
	return setmetatable(newFruitFactory, self)
end	

function FruitFactory:createRandomFruit(game)

    local config = config or {}
    local game = game or {}

    config.x = math.random(1024)
    config.y = math.random(768) + GAME_INFO_OFFSET_Y
    local fruit = Fruit:new(game, config)

	return fruit
end