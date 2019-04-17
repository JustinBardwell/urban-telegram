if (fireratecounter >= firerate * room_speed)
{
	fireratecounter = 0;
	for (var i = 0; i < shotsPerFire; i ++)
	{
		var bullet = instance_create_depth(x, y, 0, obj_enemy_bullet)
		bullet.owner = id
		with (bullet)
		{
			var xvariance = irandom_range(-10, 10)
			var yvariance = irandom_range(-10, 10)
			move_towards_point(obj_player.x + xvariance, obj_player.y + yvariance, global.bulletSpeed * owner.thisSpeedMult)
			image_angle = point_direction(x, y, obj_player.x + xvariance, obj_player.y + yvariance)
		}
	}
}