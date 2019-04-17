/// @description Insert description here
// You can write your code in this editor
enum turret {
	idle,
	attack
}

thisState = turret.idle
fireRate = random_range(1, 3)
fireRateCounter = 0