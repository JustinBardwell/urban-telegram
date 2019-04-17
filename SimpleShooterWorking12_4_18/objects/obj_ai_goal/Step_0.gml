/// @description Insert description here
// You can write your code in this editor
if madeEnemy = false
{
	if abs(distance_to_object(obj_player)) < 150
	{
		for (var i = 0; i < 5 ;i ++ )
		{
			instance_create_depth(x + choose(-20, 20), y + choose(-20, 20), 10, obj_enemy)
			madeEnemy = true
		}
	}
}