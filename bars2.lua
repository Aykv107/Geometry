tfm.exec.addPhysicObject(-1, 400, 200, {type = 12, width = 1600, height = 1600, miceCollision = false, groundCollision = false, color = 0x000})

i = 0

for i = 0, 221 do
	tfm.exec.removePhysicObject(i)
end

for x = 0, 12 do
	local config = {
		posX = 32,
		posY = 400,
		type = 12,
		width = 59,
		height = 20,
		color =	0xFFFFFF,
		miceCollision = false,
		groundCollision = false
	}

	local n = math.random(1, 16)

	--config.color = 0x110000
	config.color = 0x6a00ff

	for y = 0, n do
		tfm.exec.addPhysicObject(
			i,
			config.posX + (config.width + 2) * x,
			(config.posY - config.height / 2) - (config.height + 2) * y,
			config
		)

		--config.color = config.color + 0x000011
		config.color = config.color + 0x090000

		i = i + 1
	end
end
