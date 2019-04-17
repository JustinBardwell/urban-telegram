if ((collision_circle(x, y, global.AttackRange, obj_player ,false ,false) = noone && collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false) != noone))
{
	if (instance_exists(obj_ai_goal))
	{
		thisState = states.wander;
		path_end();
	}
}