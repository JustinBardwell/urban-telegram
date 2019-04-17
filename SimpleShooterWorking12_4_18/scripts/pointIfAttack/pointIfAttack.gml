if (collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false) = noone)
{
	image_angle = point_direction(x, y, obj_player.x, obj_player.y); // point towards player visually
}else 
{
	image_angle = direction;
}