declareEnums();
countUp();
attackIfBaseDown();
initAIVars();

switch (thisState) {
	case states.wander:
		ifAttackthenAttack();
		calculateWanderPath();
		break;
	case states.attack:
		if pExists {
			ifWanderthenWander();
			updatePath();
			shootWeapon();
			pointIfAttack();
		}else thisState = states.wander
		break;
}

attackIfBaseDown();
dieIfDead();