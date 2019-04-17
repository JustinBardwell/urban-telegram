///@desc generateEnemyRoomAt(xpos, ypos, #_of_enemies, depth_of_structure, cell_dim)
///@param xpos
///@param ypos
///@param #_of_enemies
///@param depth_of_structure
///@param cell_dim

var xpos = argument0
var ypos = argument1
var num_of_enemies = argument2
var depth_of_structure = argument3
var cell_dim = argument4

instance_create_depth(xpos, ypos, depth_of_structure, obj_ai_goal)
for (var i = 0; i < num_of_enemies; i ++)
{
	instance_create_depth(xpos, ypos, depth_of_structure, obj_enemy)
}

