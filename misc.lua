config = {
	type = 12,
	width = 1600,
	height = 1600,
	angle = 0,
	color = 0x000000,
	miceCollision = false,
	groundCollision = false,
	dynamic = false,
	linearDamping = 9999,
	mass = 0,
	p = 75,
	a = 5
}

function geometry()
	for i = 0, 20 do
		tfm.exec.addPhysicObject(i, 400, 200, config)

		config.width	= config.width - config.p
		config.height	= config.height - config.p
		config.angle	= config.angle + config.a
		config.color 	= config.color + 0x09000b
		--0x09000b
	end
end

ui.setMapName("Aykv")
tfm.exec.disableAutoNewGame()
tfm.exec.disableAutoShaman()

tfm.exec.addPhysicObject(-1, 400, 200, {type = 12, width = 1600, height = 1600, miceCollision = false, groundCollision = false, color = 0x000000, dynamic = false})
tfm.exec.addPhysicObject(-2, 400, 400, {type = 14, width = 1600, foreground = false, groundCollision = false, friction = 1})

geometry()
