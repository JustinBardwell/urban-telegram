/// @description Insert description here
// You can write your code in this editor

mp_grid_add_instances(global.motiongrid, obj_player_wall, false)
mp_grid_add_instances(global.motiongrid, obj_player_wall_cursur, false)

global.pExists = instance_exists(obj_player)

if keyboard_check(vk_escape)
{
	game_end()
}

if (instance_number(obj_enemy) <= 0)
{
	instance_create_depth(0, 0, -500, obj_level_complete)
}