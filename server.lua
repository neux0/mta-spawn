-- Settings for player
	local joinX = 0.0
	local joinY = 0.0
	local joinZ = 0.0
	local joinMessage = "welcome dude"
	local joinSkin = 0
	local spawnX = 0.0
	local spawnY = 0.0
	local spawnZ = 0.0
	local spawnSkin = 0

function spawnOnJoin()
	spawnPlayer(source, joinX, joinY, joinZ, 0 , joinSkin)
	fadeCamera(source, true)
	setCameraTarget(source, source)
	outputChatBox(joinMessage, source)
end

function spawnOnDead(ammo, killer, weapon, bodypart)
	setTimer(spawnPlayer, 3000, 1, source, spawnX, spawnY, spawnZ, 0, spawnSkin)
	setCameraTarget(source, source)
end

addEventHandler("onPlayerJoin", getRootElement(), spawnOnJoin)
addEventHandler("onPlayerWasted", getRootElement(), spawnOnDead)
