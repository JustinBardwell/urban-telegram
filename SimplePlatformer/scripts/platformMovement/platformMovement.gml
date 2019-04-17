// Movement

var keyUp = keyboard_check(ord("W"));
var keyDown = keyboard_check(ord("S"));
var keyRight = keyboard_check(ord("D"));
var keyLeft = keyboard_check(ord("A"));

var keyJump = keyboard_check_pressed(ord(" "));

if thisMovementX != 0 then LastNon0MovementX = thisMovementX;
if thisMovementY != 0 then LastNon0MovementY = thisMovementY;

thisMovementX = keyRight + -keyLeft;
thisMovementY = -keyUp + keyDown;

if thisMovementX != 0 then body.sprite_index = spr_player_running

if (keyboard_check(ord("W")) || keyboard_check(ord("S")))
{
	if (abs(thisSpeedY) = 0)
	{
		thisSpeedY = thisMinSpeed
	}else if (abs(thisSpeedY) < thisMaxSpeed)
	{
		thisSpeedY *= thisAcceleration;
	}
}else {
	if (abs(thisSpeedY) > thisMinSpeed)
	{
		thisSpeedY *= thisDecceleration;
		thisMovementY = sign(LastNon0MovementY);
	}else {
		thisSpeedY = 0
		thisMovementY = 0
	}
}

if (keyboard_check(ord("A")) || keyboard_check(ord("D")))
{
	if (abs(thisSpeedX) = 0)
	{
		thisSpeedX = thisMinSpeed
	}else if (abs(thisSpeedX) < thisMaxSpeed)
	{
		thisSpeedX *= thisAcceleration;
	}
}else {
	if (abs(thisSpeedX) > thisMinSpeed)
	{
		thisSpeedX *= thisDecceleration;
		thisMovementX = sign(LastNon0MovementX);
	}else {
		thisSpeedX = 0
		thisMovementX = 0
	}
}

thisHspd = thisMovementX * thisSpeedX

if place_meeting(x, y, obj_ladder) {
	body.sprite_index = spr_player_climbing
	thisVspd = thisMovementY * thisSpeedY
}else {
	if !place_meeting( x, y + 1, obj_solid) {
		if thisVspd < thisTerminalVelocity
		{
			thisVspd += .5
		}
	}
	
	if keyJump {
		body.sprite_index = spr_player_jumping
		if place_meeting(x, y + 1, obj_solid) {
			thisVspd += -thisJump
		}
	}
}


verticalCollision()
horizontalCollision()

body.x = x; body.y = y
body.image_xscale = sign(thisLN0H)