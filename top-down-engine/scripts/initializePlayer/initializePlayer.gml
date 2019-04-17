initializePhysics()
initializeCounters()
thisHealth = 100
thisShield = 100
thisSpeedX = 2
thisSpeedY = 1
originalSpeedX = thisSpeedX
originalSpeedY = thisSpeedY
barrelLeft = false
buildMode = false
buildingEquiped = building.woodwall

keyUp = false
keyDown = false
keyLeft = false
keyRight = false

movementX = 0
movementY = 0

fireRateCounter = 0

cursur = noone

body = instance_create_depth(x, y, 0, obj_player_body)