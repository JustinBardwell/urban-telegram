/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_player)
{
	instance_destroy()
	instance_destroy(inner)
}else scaleStatBar(owner.thisHealth, global.maxhealth, -6, 8, owner, inner)