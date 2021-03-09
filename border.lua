headerTag = [[<C><P MEDATA="0,1;;;;-0;0:::1-"/><Z>]]
headerTagClose = [[</Z></C>]]

groundsTag = [[<S><S T="12" X="400" Y="200" L="1600" H="1600" P="0,0,0.3,0.2,0,0,0,0" o="000000" c="4"/><S T="14" X="400" Y="395" L="1600" H="10" P="0,0,0.3,0.2,0,0,0,0" m=""/>]]
groundsTagClose = [[</S><D/><O/>]]

jointsTag = [[<L>]]
jointsTagClose = [[</L>]]

grounds = [[]]
joints = [[]]

-------------------------

function rgb_hex(r, g, b)
	local base16 = {
		[0] = "0",
		[1] = "1",
		[2] = "2",
		[3] = "3",
		[4] = "4",
		[5] = "5",
		[6] = "6",
		[7] = "7",
		[8] = "8",
		[9] = "9",
		[10] = "A",
		[11] = "B",
		[12] = "C",
		[13] = "D",
		[14] = "E",
		[15] = "F"
	}

	local _r1 = math.floor(math.floor(r) / 16)
	local _r2 = ((math.floor(r) / 16) - _r1) * 16

	local _g1 = math.floor(math.floor(g) / 16)
	local _g2 = ((math.floor(g) / 16) - _g1) * 16

	local _b1 = math.floor(math.floor(b) / 16)
	local _b2 = ((math.floor(b) / 16) - _b1) * 16

	return base16[_r1] .. base16[_r2] .. base16[_g1] .. base16[_g2] .. base16[_b1] .. base16[_b2]
end

-------------------------

type = 12
posX = 400
posY = 200

width1 = 1600
height1 = 1600

width2 = width1 - 40
height2 = width1 - 40

shrinkProportion = 75

jx = 400
jy = 200

v = -0.1

color1 = rgb_hex(0, 0, 0)
color2 = rgb_hex(255, 255, 255)

--------------------------

for i = 2, 43 do
	local jointPos = tostring(jx) .. "," .. tostring(jy)

	if i % 2 == 0 then
		grounds = grounds .. [[<S T="]]..type..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width1..[[" H="]]..height1..[[" P="1,0,0.3,0.2,0,0,100,0" o="]]..color1..[[" c="4"/>]]
		
		joints = joints .. [[<JR M1="]]..i..[[" P1="]]..jointPos..[[" MV="Infinity,]]..v..[["/>]]

		width1 = width1 - shrinkProportion
		height1 = height1 - shrinkProportion

		v = v - 0.1
	else
		grounds = grounds .. [[<S T="]]..type..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width2..[[" H="]]..height2..[[" P="1,0,0.3,0.2,0,0,100,0" o="]]..color2..[[" c="4"/>]]
	
		joints = joints .. [[<JR M1="]]..i..[[" P1="]]..jointPos..[[" MV="Infinity,]]..v..[["/>]]

		width2 = width2 - shrinkProportion
		height2 = height2 - shrinkProportion
	end

end

--------------------------

map = headerTag .. groundsTag .. grounds .. groundsTagClose .. jointsTag .. joints .. jointsTagClose .. headerTagClose

tfm.exec.disableAutoNewGame()
tfm.exec.disableAutoShaman()
tfm.exec.disableAfkDeath()
tfm.exec.disableMortCommand()
tfm.exec.disablePhysicalConsumables()

tfm.exec.newGame(map)

ui.setMapName("Aykv")

function eventNewPlayer(p)
	tfm.exec.respawnPlayer(p)
end

function eventPlayerDied(p)
	tfm.exec.respawnPlayer(p)
end
