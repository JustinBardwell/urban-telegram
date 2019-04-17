/// @description Insert description here
// You can write your code in this editor
if (bomb_speed >= .3) 
{
	bomb_speed -= .3;
}else bomb_speed = 0

if (bomb_speed = 0)
{
	counter ++;
	if (counter >= room_speed * 3)
	{
		instance_destroy();
		instance_create_depth(x, y, -1, obj_big_bomb_explosion);
	}
}
move_towards_point(TargetX, TargetY, bomb_speed);