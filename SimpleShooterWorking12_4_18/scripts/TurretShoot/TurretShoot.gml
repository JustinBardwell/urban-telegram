image_angle = point_direction(x, y, obj_player.x, obj_player.y)
if fireRateCounter >= room_speed * fireRate {
	var bullet = instance_create_depth(x, y, -1, obj_enemy_bullet)
	with (bullet) {
		move_towards_point(obj_player.x, obj_player.y, global.bulletSpeed)
	}
	bullet = noone
	fireRateCounter = 0
}