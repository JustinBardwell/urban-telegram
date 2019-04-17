
if place_meeting( x, y + thisVspd, obj_solid) {
	while !place_meeting( x, y + sign(thisVspd), obj_solid) {
	y += sign(thisVspd)
	}
	thisVspd = 0
}
y += thisVspd