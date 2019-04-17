/// @description Insert description here
// You can write your code in this editor
if thisShield > 0
{
	thisShield -= global.bulletDamage * 2
	shieldCounter = 0
	if thisShield < 0 then thisShield = 0
}else if thisHealth > 0 
{
	thisHealth -= global.bulletDamage
	if thisHealth < 0 then thisHealth = 0
}
instance_destroy(other)