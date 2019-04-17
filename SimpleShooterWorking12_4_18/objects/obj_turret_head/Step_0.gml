/// @description Insert description here
// You can write your code in this editor
fireRateCounter ++;
var fireRate = .5

if (global.pExists) {
	switch (thisState) {
		case (turret.idle):
			image_angle ++;
			TurretIfAttackThenAttack();
			break;
	
		case (turret.attack):
			TurretIfIdleThenIdle();
			TurretShoot();
			break;
	}
}else 
{
	image_angle ++
}