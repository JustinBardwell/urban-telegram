
if place_meeting(x, y + vspd, obj_solid) {
	while !(place_meeting(x, y + sign(vspd), obj_solid)) {
		y += sign(vspd)
	}
	vspd = 0
}
y += vspd