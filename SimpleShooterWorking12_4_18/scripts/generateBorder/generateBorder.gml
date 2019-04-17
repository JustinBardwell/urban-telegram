///@desc generateBorder(cell_dimension, wall_block, depth_of_walls)
///@param cell_dimension
///@param wall_block
///@param depth_of_walls

var cell_width = argument0
var cell_height = cell_width
var num_rows = room_height / cell_height
var num_columns = room_width / cell_width
var wall_block = argument1
var depth_of_walls = argument2

x = -cell_width
y = -cell_height

for (var i = 0; i <= room_width; i += cell_width)
{
	instance_create_depth(i, 0, depth_of_walls, wall_block)
}
for (var i = 0; i < room_height; i += cell_height)
{
	instance_create_depth(room_width, i, depth_of_walls, wall_block)
}
for (var i = room_width; i >= 0; i -= cell_width)
{
	instance_create_depth(i, room_height, depth_of_walls, wall_block)
}
for (var i = room_height; i >= 0; i -= cell_height)
{
	instance_create_depth(0, i, depth_of_walls, wall_block)
}