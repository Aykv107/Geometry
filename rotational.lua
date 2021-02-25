velocities = {}
colors = {}
width = {}
height = {}

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

	local _r1 = math.floor(r / 16)
	local _r2 = ((r / 16) - _r1) * 16

	local _g1 = math.floor(g / 16)
	local _g2 = ((g / 16) - _g1) * 16

	local _b1 = math.floor(b / 16)
	local _b2 = ((b / 16) - _b1) * 16

	return base16[_r1] ..base16[_r2] .. base16[_g1] .. base16[_g2] .. base16[_b1] .. base16[_b2] 
end
--------------------------

objType = 12

initialWidth = 1600
initialHeight = 1600
shrinkProportion = 75

posX = 400
posY = 200

jointPos = "400,200"

--------------------------

velocity = 0
velocityProportion = 0.1

--------------------------

r = 0
g = 0
b = 0

rp = -255
gp = -255
bp = -255

--------------------------

for i = 1, 20 do
	--if i % 2 == 0 then
	velocities[i] = velocity
	--else
	--velocities[i] = -velocity
	--end

	velocity = velocity - velocityProportion
end

for i = 1, 21 do
	colors[i] = rgb_hex(r, g, b)

	r = math.abs(r + rp)
	g = math.abs(g + gp)
	b = math.abs(b + bp)
end

for i = 1, 21 do
	width[i] = initialWidth
	height[i] = initialHeight

	initialWidth = initialWidth - shrinkProportion
	initialHeight = initialHeight - shrinkProportion
end

--------------------------

mapString1 = [[<C><P MEDATA=";;;0,1;-0;0::0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31:1-"/><Z><S><S T="0" X="400" Y="387" L="1650" H="10" P="0,0,0.3,0.2,0,0,0,0"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[1]..[[" H="]]..height[1]..[[" P="0,0,0,0,0,0,100,0" o="]]..colors[1]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[2]..[[" H="]]..height[2]..[[" P="1,0,0,0,5,0,100,0" o="]]..colors[2]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[3]..[[" H="]]..height[3]..[[" P="1,0,0,0,10,0,100,0" o="]]..colors[3]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[4]..[[" H="]]..height[4]..[[" P="1,0,0,0,15,0,100,0" o="]]..colors[4]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[5]..[[" H="]]..height[5]..[[" P="1,0,0,0,20,0,100,0" o="]]..colors[5]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[6]..[[" H="]]..height[6]..[[" P="1,0,0,0,25,0,100,0" o="]]..colors[6]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[7]..[[" H="]]..height[7]..[[" P="1,0,0,0,30,0,100,0" o="]]..colors[7]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[8]..[[" H="]]..height[8]..[[" P="1,0,0,0,35,0,100,0" o="]]..colors[8]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[9]..[[" H="]]..height[9]..[[" P="1,0,0,0,40,0,100,0" o="]]..colors[9]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[10]..[[" H="]]..height[10]..[[" P="1,0,0,0,45,0,100,0" o="]]..colors[10]..[[" c="4"/>]]
mapString2 = [[<S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[11]..[[" H="]]..height[11]..[[" P="1,0,0,0,50,0,100,0" o="]]..colors[11]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[12]..[[" H="]]..height[12]..[[" P="1,0,0,0,55,0,100,0" o="]]..colors[12]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[13]..[[" H="]]..height[13]..[[" P="1,0,0,0,60,0,100,0" o="]]..colors[13]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[14]..[[" H="]]..height[14]..[[" P="1,0,0,0,65,0,100,0" o="]]..colors[14]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[15]..[[" H="]]..height[15]..[[" P="1,0,0,0,70,0,100,0" o="]]..colors[15]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[16]..[[" H="]]..height[16]..[[" P="1,0,0,0,75,0,100,0" o="]]..colors[16]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[17]..[[" H="]]..height[17]..[[" P="1,0,0,0,80,0,100,0" o="]]..colors[17]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[18]..[[" H="]]..height[18]..[[" P="1,0,0,0,85,0,100,0" o="]]..colors[18]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[19]..[[" H="]]..height[19]..[[" P="1,0,0,0,90,0,100,0" o="]]..colors[19]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[20]..[[" H="]]..height[20]..[[" P="1,0,0,0,95,0,100,0" o="]]..colors[20]..[[" c="4"/><S T="]]..objType..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width[21]..[[" H="]]..height[21]..[[" P="1,0,0,0,100,0,100,0" o="]]..colors[21]..[[" c="4"/>]]
mapString3 =[[</S><D/><O/><L><JR M1="2" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[1]..[["/><JR M1="3" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[2]..[["/><JR M1="4" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[3]..[["/><JR M1="5" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[4]..[["/><JR M1="6" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[5]..[["/><JR M1="7" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[6]..[["/><JR M1="8" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[7]..[["/><JR M1="9" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[8]..[["/><JR M1="10" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[9]..[["/><JR M1="11" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[10]..[["/><JR M1="12" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[11]..[["/><JR M1="13" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[12]..[["/><JR M1="14" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[13]..[["/><JR M1="15" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[14]..[["/><JR M1="16" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[15]..[["/><JR M1="17" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[16]..[["/><JR M1="18" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[17]..[["/><JR M1="19" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[18]..[["/><JR M1="20" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[19]..[["/><JR M1="21" P1="]]..jointPos..[[" MV="Infinity,]]..velocities[20]..[["/></L></Z></C>]]

map = mapString1 .. mapString2 .. mapString3

tfm.exec.disableAutoNewGame()
tfm.exec.disableAfkDeath()
tfm.exec.disableMortCommand()
tfm.exec.disablePhysicalConsumables()
tfm.exec.disableAutoShaman()
tfm.exec.newGame(map)

ui.setMapName("Aykv")

function eventNewPlayer(p)
	tfm.exec.respawnPlayer(p)
end

function eventPlayerDied(p)
	tfm.exec.respawnPlayer(p)
end
