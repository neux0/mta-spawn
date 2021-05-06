-- Settings for player
	local joinX = 0.0
	local joinY = 0.0
	local joinZ = 0.0
	local joinMessage = "welcome dude :)"
	local joinSkin = 0
	local spawnX = 0.0
	local spawnY = 0.0
	local spawnZ = 0.0
	local spawnSkin = 0

-- when player join
function spawnOnJoin()
	spawnPlayer(source, joinX, joinY, joinZ, 0 , joinSkin)
	fadeCamera(source, true)
	setCameraTarget(source, source)
	outputChatBox(joinMessage, source)
end
addEventHandler("onPlayerJoin", getRootElement(), spawnOnJoin)

-- when player die
function spawnOnDead(ammo, killer, weapon, bodypart)
	setTimer(spawnPlayer, 4000, 1, source, spawnX, spawnY, spawnZ, 0, spawnSkin)
	setCameraTarget(source, source)
end
addEventHandler("onPlayerWasted", getRootElement(), spawnOnDead)
