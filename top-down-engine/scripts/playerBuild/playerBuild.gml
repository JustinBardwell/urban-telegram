buildSwitch = keyboard_check(ord("B"))
buildKey = keyboard_check(ord(" "))
buildingLeft = -(keyboard_check(vk_left))
buildingRight = keyboard_check(vk_right)

if buildSwitch {
	if buildModeCounter > room_speed * .25 {
		buildModeCounter = 0
		if buildMode = true {
			buildMode = false
			instance_destroy(cursur)
			cursur = noone
		}else if buildMode = false {
			buildMode = true
		}
	}
}

if buildMode {
	if cursur = noone then cursur = instance_create_depth(mouse_x, mouse_y, -1, obj_player_wall_cursur)
	var buildingChange = buildingLeft + buildingRight
	buildingEquiped += buildingChange
	if buildingEquiped < 0 then buildingEquiped = global.numofbuilding -1
	if buildingEquiped > global.numofbuilding -1 then buildingEquiped = 0
	if buildKey {
		if buildLimit > room_speed * .25 {
			buildLimit = 0
			wall = instance_create_depth(mouse_x, mouse_y, -1, obj_player_wall)
			with (wall) {
				if !place_snapped(8, 8) then move_snap(8, 8)
			}
		}
	}
}

if buildMode then sprite_index = spr_player_build else sprite_index = spr_player_temp