if !collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false) 
{
	thisState = turret.attack
}