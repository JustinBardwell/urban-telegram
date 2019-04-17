keyShoot = keyboard_check(ord(" "))
keyBomb = keyboard_check_pressed(vk_lshift)

if buildMode = false {
	if keyShoot 
	{
		if fireRateCounter > room_speed * global.fireRate 
		{
			fireRateCounter = 0
			bullet = instance_create_depth(x, y, 1, obj_player_bullet)
			with bullet 
			{
				move_towards_point(mouse_x, mouse_y, global.bulletSpeed)
			}
		}
	}
	
	if keyBomb
	{
		if fireRateCounter > room_speed * global.fireRate 
		{
			fireRateCounter = 0
			instance_create_depth(x, y, 0, obj_big_bomb)
		}
	}
}

if barrelLeft = false {
	barrelLeft = true 
}else {
	barrelLeft = false
}