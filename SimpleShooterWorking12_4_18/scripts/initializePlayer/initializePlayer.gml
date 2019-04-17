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

shieldCounter = 0

movementX = 0
movementY = 0

fireRateCounter = 0
optimizeCounter = 0

cursur = noone

draw_exp_gui = false

body = instance_create_depth(x, y, 0, obj_player_body)
healthbar = instance_create_depth(x, y, 0, obj_health)
healthbar.owner = id
shieldbar = instance_create_depth(x, y, 0, obj_shield)
shieldbar.owner = id