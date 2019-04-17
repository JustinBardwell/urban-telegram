/// @description Insert description here
// You can write your code in this editor

// Variable logging
if thisHspd != 0 then thisLN0H = thisHspd;
if thisVspd != 0 then thisLN0V = thisVspd;

// Counters
buildCounter ++;
fireRateCounter ++;
jumpControlCounter ++;
witchWeaponCounter ++;

// Movement
platformMovement()

// Pickups
coin = instance_place(x, y, obj_coin)
if coin != noone then {
	instance_destroy(coin)
}

// Weapon Meachanics
var keyPlus = keyboard_check_pressed(vk_right)
var keyMinus = keyboard_check_pressed(vk_left)
var keyPickUp = keyboard_check_pressed(ord("E"))
var keyDrop = keyboard_check_pressed(ord("Q"))
var gunSelectedValue = 1

