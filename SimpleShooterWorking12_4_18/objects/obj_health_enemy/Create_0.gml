/// @description Insert description here
// You can write your code in this editor
inner = instance_create_depth(x, y, -49,obj_health_bar_inner_enemy)
owner = instance_nearest(x, y, obj_enemy_tank)
inner.owner = owner
depth = -50