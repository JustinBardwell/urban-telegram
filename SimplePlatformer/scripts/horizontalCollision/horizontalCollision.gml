if place_meeting(x + thisHspd, y, obj_solid) {
	while !place_meeting(x + sign(thisHspd), y, obj_solid) {
		x += sign(thisHspd)
	}
	thisHspd = 0
}
x += thisHspd