var distancetonearestgoal = abs(distance_to_object(instance_nearest(x, y, obj_ai_goal)));
var targetgoal = instance_nearest(x, y, obj_ai_goal);

if distancetonearestgoal >= 5 
{
	if (mp_grid_path(global.motiongrid, wanderpath, x, y, targetgoal.x, targetgoal.y, true))
	{
		path_start(wanderpath, thisSpeed, path_action_stop, false);
		image_angle = point_direction(x, y, targetgoal.x, targetgoal.y);
	}
}else 
{
	path_add_point(wanderpath, targetgoal.x, targetgoal.y - 20, thisSpeed);
	path_add_point(wanderpath, targetgoal.x - 20, targetgoal.y, thisSpeed);
	path_add_point(wanderpath, targetgoal.x, targetgoal.y + 20, thisSpeed);
	path_add_point(wanderpath, targetgoal.x + 20, targetgoal.y, thisSpeed);
	//path_set_kind(wanderpath, true);
	path_start(wanderpath, thisSpeed, path_action_continue, false);
	image_angle = direction;
}