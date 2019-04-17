///@desc scaleStatBar(statvalue, maxstatvalue, xOffset, yOffset, Owner, InnerID)
///@param statvalue
///@param maxstatvalue
///@param xOffset
///@param yOffset
///@param Owner
///@param InnerID

var stat = argument0
var maxstat = argument1
var xOffset = argument2
var yOffset = argument3
var Owner = argument4
var InnerID = argument5

if instance_exists(Owner)
{
	var xscaleval = stat/maxstat
	with (InnerID)
	{
		image_xscale = xscaleval
		x = Owner.x + xOffset
		y = Owner.y + yOffset
	}
	x = Owner.x + xOffset
	y = Owner.y + yOffset
}