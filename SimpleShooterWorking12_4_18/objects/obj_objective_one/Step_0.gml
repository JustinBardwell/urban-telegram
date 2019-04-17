/// @description Insert description here
// You can write your code in this editor
if canErase != 1 then canErase = keyboard_check(ord(" ")) 

if canErase = true
{
	if image_alpha > 0 then image_alpha -= .01 else instance_destroy()
}