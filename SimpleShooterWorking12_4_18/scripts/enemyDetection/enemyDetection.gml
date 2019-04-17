/// @desc enemyDetection(range, state)

range = argument0
state = argument1
isInvert = argument2

if isInvert {
	if collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false) 
	{
		thisState = state
	}
	
	if !collision_circle(x, y, range, obj_player, false ,false) 
	{
		thisState = state
	}
}else {
	if !collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false) 
	{
		if collision_circle(x, y, range, obj_player, false ,false) 
		{
			thisState = state
		}
	}
}