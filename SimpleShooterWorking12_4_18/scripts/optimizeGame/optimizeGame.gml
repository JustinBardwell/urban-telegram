/// @desc optimizeGame()
optimizeCounter ++
if optimizeCounter >= room_speed * 5
{
	optimizeCounter = 0
	instance_deactivate_region(view_xview[0], view_yview[0], view_wport[0], view_hport[0], false, true)
	instance_activate_region(view_xview[0], view_yview[0], view_wport[0], view_hport[0], true)
}