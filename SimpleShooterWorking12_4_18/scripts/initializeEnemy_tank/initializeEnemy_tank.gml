initializePhysics()
depth = 0
thisHealth = 100
thisState = states.wander
thisSpeed = .5
firerate = .5
fireratecounter = 0

wanderpath = path_add()

updatecounter = 0

thisHealthBar = instance_create_depth(x, y, 0, obj_health_enemy)
thisMinDis = 30
shotsPerFire = 2

thisSpeedMult = .5