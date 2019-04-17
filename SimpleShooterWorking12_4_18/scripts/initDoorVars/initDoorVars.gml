pExists = instance_exists(obj_player)
eExists = instance_exists(obj_enemy)
if eExists then nearestEnemy = instance_nearest(x, y, obj_enemy) else nearestEnemy = noone
if pExists then distance_to_player = abs(distance_to_object(obj_player)) else distance_to_player = noone
if nearestEnemy != noone then distance_to_nearest_enemy = abs(distance_to_object(obj_enemy)) else distance_to_nearest_enemy = noone
