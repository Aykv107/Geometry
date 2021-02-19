config = {
	type = 12,
	width = 1600,
	height = 1600,
	angle = 0,
	color = 0x000000,
	miceCollision = false,
	groundCollision = false,
	dynamic = true,
	mass = 0
}

p = 75
a = 5

function geometry()
	for i = 0, 20 do
		tfm.exec.addPhysicObject(i, 400, 200, config)

		config.width	= config.width - p
		config.height	= config.height - p
		config.angle	= config.angle + a
		config.color 	= config.color + 0x09000b
		--0x09000b
	end
end

function eventNewPlayer(p)
	geometry()
end

geometry()
