/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_player)
{
	instance_destroy()
	instance_destroy(inner)
}else scaleStatBar(owner.thisShield, global.maxshield, -6, 12, owner, inner)