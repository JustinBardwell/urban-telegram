/// @description Insert description here
// You can write your code in this editor
cell_dim = 16
cell_width = cell_dim
cell_height = cell_dim
width_ = room_width div cell_width
height_ = room_height div cell_height
grid_ = ds_grid_create(width_, height_)
ds_grid_set_region(grid_, 0, 0, width_, height_, 0)

controller_x = 0
controller_y = height_ div 2
controller_dir = irandom(3)

map_size = 500
ai_goal_chances = 10

repeat(width_)
{
	controller_x += cell_width
	tick = irandom_range(0, ai_goal_chances)
	if tick == 1
	{
		instance_create_depth(controller_x, controller_y, 0, obj_ai_goal_pregen)
	}
}

generateBorder(16, obj_solid, 0)