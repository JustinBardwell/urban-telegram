/// @description Insert description here
// You can write your code in this editor

/// Variables
thisHealth = 100;
thisSprint = 100;
thisShield = 100;
thisStorage = 100;

/// Physics
thisHspd = 0;
thisVspd = 0;
thisMovementX = 0;
thisMovementY = 0;
thisSpeed = 1
thisSpeedX = 0;
thisSpeedY = 0;
thisLN0H = choose(-1, 1)
thisLN0V = choose(-1, 1)
thisDecceleration = .8
thisAcceleration = 1.2
thisMaxSpeed = thisSpeed * 3
thisMinSpeed = .1
thisJump = 5
thisGravity = 2.5
thisTerminalVelocity = 9.81
thisWeapon = noone
thisWeaponSlot1 = noone
thisWeaponSlot2 = noone
thisWeaponSlots = 2

// Player Weapons
enum weapon {
	rifle,
	sniper,
	pistol,
	shotgun
}

// Counters
fireRateCounter = 0;
jumpControlCounter = 0;
witchWeaponCounter = 0;
buildCounter = 0;

// Parts
body = instance_create_depth(x, y, 0, obj_player_body)

// Globals
global.Gravity = 9.81 / room_speed