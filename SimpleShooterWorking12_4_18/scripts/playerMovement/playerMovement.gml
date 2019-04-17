
if movementX != 0 then lastnon0movementX = movementX
if movementY != 0 then lastnon0movementY = movementY

keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyUp = keyboard_check(ord("W"))
keyDown = keyboard_check(ord("S"))

movementX = (keyLeft + (-keyRight)) 
movementY = (keyDown + (-keyUp)) 

if movementX = 0 {
	thisSpeedX *= global.decelleration
	movementX = lastnon0movementX 
}else thisSpeedX = originalSpeedX

if movementY = 0 {
	thisSpeedY *= global.decelleration
	movementY = lastnon0movementY
}else thisSpeedY = originalSpeedY

hspd = -movementX * thisSpeedX
vspd = movementY * thisSpeedY

screenLoop()