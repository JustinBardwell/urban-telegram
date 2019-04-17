
if place_meeting(x + hspd, y, obj_solid) {
	while !(place_meeting(x + sign(hspd), y, obj_solid)) {
		x += sign(hspd)
	}
	hspd = 0
}
x += hspd