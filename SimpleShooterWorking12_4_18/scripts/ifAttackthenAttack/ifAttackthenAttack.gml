if (pExists) then if ((collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false) = noone))
{
	thisState = states.attack; //State change
	path_end();
}