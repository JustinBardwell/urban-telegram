/// @description Insert description here
// You can write your code in this editor
enum states {
	wander,
	charge
}

vectorChangeDelta ++;

switch (thisState)
{
	case states.wander:
		if collision_circle(x, y, thisAttackDis, obj_player, false, false) {
			if !collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false) {
				thisState = states.charge
			}
		}
		if vectorChangeDelta >= room_speed * wanderChangeDirectionTime
		{
			vectorChangeDelta = 0
			randomXVector = choose(-1, 0, 1)
		}
		thisHspd = randomXVector * thisSpeed
		if place_meeting(x, y, obj_solid) {
			thisHspd *= -1
		}
		break;
	
	case states.charge:
		if !collision_circle(x, y, thisAttackDis, obj_player, false, false) || collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false) {
			thisState = states.wander
		}
		var distance_to_player = distance_to_object(obj_player)
		var xdistance_to_player = (obj_player.x - x)
		var xvector_to_player = sign(xdistance_to_player)
		var ydistance_to_player = (obj_player.y -y)
		var yvector_to_player = sign(ydistance_to_player)
		if distance_to_player > thisMinDis then thisHspd = xvector_to_player * thisSpeed
		break;
}

if thisHspd = 0 then thisSpeedPerc = .1 else if thisSpeedPerc < 1 then thisSpeedPerc *= 1.1

if place_meeting(x, y + 1, obj_solid) {
	if thisVspd < thisTerminalVelocity {
		thisVspd += thisGravity
	}
}

if place_meeting(x + thisHspd, y, obj_solid) {
	while !place_meeting(x + sign(thisHspd), y, obj_solid) {
		x += sign(thisHspd)
	}
	thisHspd = 0
}
x += thisHspd * thisSpeedPerc

verticalCollision()