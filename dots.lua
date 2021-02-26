headerTag = [[<C><P MEDATA="0,1;;;;-0;0:::1-"/><Z>]]
headerTagClose = [[</Z></C>]]

groundsTag = [[<S><S T="12" X="400" Y="200" L="1600" H="1600" P="0,0,0.3,0.2,0,0,0,0" o="000000" c="4"/><S T="14" X="400" Y="395" L="1600" H="10" P="0,0,0.3,0.2,0,0,0,0" m=""/>]]
groundsTagClose = [[</S><D/><O/>]]

jointsTag = [[<L>]]
jointsTagClose = [[</L>]]

grounds = [[]]
joints = [[]]

-------------------

velocities = {}
colors = {}

-------------------

type = 13

posX = 280
posY = 200
jointPos = "400,200"
jx = 400
jy = 200
width = 100
height = 100

color = "FFFFFF"
v = -1
-------------------

for i = 2, 52 do
	jointPos = tostring(jx) .. "," .. tostring(jy)
	grounds = grounds .. [[<S T="]]..type..[[" X="]]..posX..[[" Y="]]..posY..[[" L="]]..width..[[" H="]]..height..[[" P="1,0,0.3,0.2,0,0,100,0" o="]]..color..[[" c="4"/>]]
	joints = joints .. [[<JR M1="]]..i..[[" P1="]]..jointPos..[[" MV="Infinity,]]..v..[["/>]]
	v = v - 0.01
	--posX = posX + 10
	--jx = jx + 15
end

-------------------

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
