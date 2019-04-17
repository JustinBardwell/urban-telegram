keyShoot = keyboard_check(ord(" "))

if buildMode = false {
	if keyShoot {
		if fireRateCounter > room_speed * global.fireRate {
			fireRateCounter = 0
			bullet = instance_create_depth(x, y, 1, obj_player_bullet)
			with bullet {
				move_towards_point(mouse_x, mouse_y, global.bulletSpeed)
			}
		}
	}
}

if barrelLeft = false {
	barrelLeft = true 
}else {
	barrelLeft = false
}