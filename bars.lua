tfm.exec.addPhysicObject(-1, 400, 200, {type = 12, width = 1600, height = 1600, color = 0x000, miceCollision = false})

for i = 1, 39 do
	local config = {
		posX = 0,
		posY = 400,
		type = 12,
		width = 19,
		height = math.random(50, 300),
		color = 0x6a1188 + 0x000011 * i,
		miceCollision = false
	}

	tfm.exec.addPhysicObject(
		i,
		config.posX + 20 * i,
		math.abs(config.posY - config.height / 2),
		config
	)

end
