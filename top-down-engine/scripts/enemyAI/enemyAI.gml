enum states {
	wander,
	attack
}

motiongrid = mp_grid_create(0, 0, 256/4, 192/4, 4, 4)
mp_grid_add_instances(motiongrid, obj_solid, false)
mp_grid_add_instances(motiongrid, obj_player_wall, false)
mp_grid_add_instances(motiongrid, obj_player_wall_cursur, false)
updatecounter++

path = path_add()


if xvector != 0 then ln0xvector = xvector //Grabbing non-0 values
if yvector != 0 then ln0yvector = yvector //Grabbing non-0 values

xvectordis = (obj_player.x - x) //Getting x-axis distance to player
yvectordis = (obj_player.y - y) //Getting y-axis distance to player

switch (thisState) {
	case states.wander:
		if (collision_circle(x, y, global.AttackRange, obj_player, false, false) && (!collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false))) || global.locknown
		{
			thisState = states.attack //State change
			global.locknown = true
		}
		
		if mp_grid_path(motiongrid, pathwander, instance_nearest(instance_nearest(obj_ai_goal).x, instance_nearest(obj_ai_goal).y).x , instance_nearest(instance_nearest(obj_ai_goal).x, instance_nearest(obj_ai_goal).y).y, goal.x , goal.y , true) 
		{
			path_start(pathwander, thisSpeed + random_range(-.5, .5), path_action_continue, true)
		}
		
		break;
	case states.attack:
		if (!collision_circle(x, y, global.AttackRange, obj_player ,false ,false)) || (collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false))
		{
			thisState = states.wander
			global.locknown = false
		}
		if updatecounter >= room_speed * 1 
		{
			if abs(obj_player.x - x) > 10 || abs(obj_player.y - y) > 10
			{
				if mp_grid_path(motiongrid, path, x, y, obj_player.x , obj_player.y , true) 
				{
					path_start(path, thisSpeed + random_range(-.5, .5), path_action_stop, false)
				}
			}else 
			{
				path_end()
			}
		}
		image_angle = point_direction(x, y, obj_player.x, obj_player.y) // point towards player visually
		break;
}
