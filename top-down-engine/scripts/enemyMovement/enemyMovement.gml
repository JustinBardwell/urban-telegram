
if xvector = 0 {
	thisSpeedX *= global.decelleration
	xvector = ln0xvector 
}else thisSpeedX = thisSpeed

if yvector = 0 {
	thisSpeedY *= global.decelleration
	yvector = ln0yvector
}else thisSpeedY = thisSpeed

hspd = xvector * thisSpeedX
vspd = yvector * thisSpeedY

if thisState = states.wander then image_angle = point_direction(x, y, x + hspd, y + vspd)

collisions()
screenLoop()