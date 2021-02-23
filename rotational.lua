velocities = {}
colors = {}

--------------------------

velocity = 0
velocityProportion = 0.01

--------------------------

color = 0x000000
colorProportion = 0x00000b

--------------------------

for i = 1, 20 do
	velocities[i] = velocity

	velocity = velocity - velocityProportion
end

for i = 1, 21 do
	local colorConfig = tostring(color)

	colors[i] = colorConfig

	color = color + colorProportion
end

map = [[<C><P MEDATA=";;;0,1;-0;0::0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31:1-"/><Z><S><S T="0" X="400" Y="387" L="1650" H="10" P="0,0,0.3,0.2,0,0,0,0"/><S T="12" X="400" Y="200" L="1600" H="1600" P="0,0,0,0,0,0,100,0" o="]]..colors[1]..[[" c="4"/><S T="12" X="400" Y="200" L="1525" H="1525" P="1,0,0,0,5,0,100,0" o="]]..colors[2]..[[" c="4"/><S T="12" X="400" Y="200" L="1450" H="1450" P="1,0,0,0,10,0,100,0" o="]]..colors[3]..[[" c="4"/><S T="12" X="400" Y="200" L="1375" H="1375" P="1,0,0,0,15,0,100,0" o="]]..colors[4]..[[" c="4"/><S T="12" X="400" Y="200" L="1300" H="1300" P="1,0,0,0,20,0,100,0" o="]]..colors[5]..[[" c="4"/><S T="12" X="400" Y="200" L="1225" H="1225" P="1,0,0,0,25,0,100,0" o="]]..colors[6]..[[" c="4"/><S T="12" X="400" Y="200" L="1150" H="1150" P="1,0,0,0,30,0,100,0" o="]]..colors[7]..[[" c="4"/><S T="12" X="400" Y="200" L="1075" H="1075" P="1,0,0,0,35,0,100,0" o="]]..colors[8]..[[" c="4"/><S T="12" X="400" Y="200" L="1000" H="1000" P="1,0,0,0,40,0,100,0" o="]]..colors[9]..[[" c="4"/><S T="12" X="400" Y="200" L="925" H="925" P="1,0,0,0,45,0,100,0" o="]]..colors[10]..[[" c="4"/><S T="12" X="400" Y="200" L="850" H="850" P="1,0,0,0,50,0,100,0" o="]]..colors[11]..[[" c="4"/><S T="12" X="400" Y="200" L="775" H="775" P="1,0,0,0,55,0,100,0" o="]]..colors[12]..[[" c="4"/><S T="12" X="400" Y="200" L="700" H="700" P="1,0,0,0,60,0,100,0" o="]]..colors[13]..[[" c="4"/><S T="12" X="400" Y="200" L="625" H="625" P="1,0,0,0,65,0,100,0" o="]]..colors[14]..[[" c="4"/><S T="12" X="400" Y="200" L="550" H="550" P="1,0,0,0,70,0,100,0" o="]]..colors[15]..[[" c="4"/><S T="12" X="400" Y="200" L="475" H="475" P="1,0,0,0,75,0,100,0" o="]]..colors[16]..[[" c="4"/><S T="12" X="400" Y="200" L="400" H="400" P="1,0,0,0,80,0,100,0" o="]]..colors[17]..[[" c="4"/><S T="12" X="400" Y="200" L="325" H="325" P="1,0,0,0,85,0,100,0" o="]]..colors[18]..[[" c="4"/><S T="12" X="400" Y="200" L="250" H="250" P="1,0,0,0,90,0,100,0" o="]]..colors[19]..[[" c="4"/><S T="12" X="400" Y="200" L="175" H="175" P="1,0,0,0,95,0,100,0" o="]]..colors[20]..[[" c="4"/><S T="12" X="400" Y="200" L="100" H="100" P="1,0,0,0,100,0,100,0" o="]]..colors[21]..[[" c="4"/></S><D/><O/><L><JR M1="2" P1="400,200" MV="Infinity,]]..velocities[1]..[["/><JR M1="3" P1="400,200" MV="Infinity,]]..velocities[2]..[["/><JR M1="4" P1="400,200" MV="Infinity,]]..velocities[3]..[["/><JR M1="5" P1="400,200" MV="Infinity,]]..velocities[4]..[["/><JR M1="6" P1="400,200" MV="Infinity,]]..velocities[5]..[["/><JR M1="7" P1="400,200" MV="Infinity,]]..velocities[6]..[["/><JR M1="8" P1="400,200" MV="Infinity,]]..velocities[7]..[["/><JR M1="9" P1="400,200" MV="Infinity,]]..velocities[8]..[["/><JR M1="10" P1="400,200" MV="Infinity,]]..velocities[9]..[["/><JR M1="11" P1="400,200" MV="Infinity,]]..velocities[10]..[["/><JR M1="12" P1="400,200" MV="Infinity,]]..velocities[11]..[["/><JR M1="13" P1="400,200" MV="Infinity,]]..velocities[12]..[["/><JR M1="14" P1="400,200" MV="Infinity,]]..velocities[13]..[["/><JR M1="15" P1="400,200" MV="Infinity,]]..velocities[14]..[["/><JR M1="16" P1="400,200" MV="Infinity,]]..velocities[15]..[["/><JR M1="17" P1="400,200" MV="Infinity,]]..velocities[16]..[["/><JR M1="18" P1="400,200" MV="Infinity,]]..velocities[17]..[["/><JR M1="19" P1="400,200" MV="Infinity,]]..velocities[18]..[["/><JR M1="20" P1="400,200" MV="Infinity,]]..velocities[19]..[["/><JR M1="21" P1="400,200" MV="Infinity,]]..velocities[20]..[["/></L></Z></C>]]

tfm.exec.disableAutoNewGame()
tfm.exec.disableAfkDeath()
tfm.exec.disableAutoShaman()
tfm.exec.newGame(map)
