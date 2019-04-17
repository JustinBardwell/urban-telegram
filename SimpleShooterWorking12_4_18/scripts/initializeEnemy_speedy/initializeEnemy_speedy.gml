initializePhysics()
depth = 0
thisHealth = 100
thisState = states.wander
thisSpeed = 3
firerate = .75

wanderpath = path_add()

updatecounter = 0
fireratecounter = 0

global.locknown = false

thisMinDis = 10
shotsPerFire = 1

thisSpeedMult = 1