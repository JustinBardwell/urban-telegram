///@desc generateWallBlockAt(xpos, ypos, depth_of_structure)
///@param xpos
///@param ypos
///@param depth_of_structure

var xpos = argument0
var ypos = argument1
var depth_of_structure = argument2

instance_create_depth(xpos, ypos, depth_of_structure, obj_solid)