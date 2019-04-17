/// @description Insert description here
// You can write your code in this editor
global.bulletDamage = 5
global.decelleration = .9
global.bulletSpeed  = 2
global.fireRate = .25

global.numofbuilding = 4

global.WanderRange = 150
global.AttackRange = 120
global.AttackRangeBoss = 300
global.MinimumDistance = 20
global.maxhealth = 100
global.maxshield = 100

global.turret_turn_speed = 1

cell_dim = 4
global.motiongrid = mp_grid_create(0, 0, room_width/cell_dim, room_height/cell_dim, cell_dim, cell_dim)
mp_grid_add_instances(global.motiongrid, obj_player_wall, false)
mp_grid_add_instances(global.motiongrid, obj_player_wall_cursur, false)

mp_grid_add_instances(global.motiongrid, obj_solid, true)
mp_grid_add_instances(global.motiongrid, obj_turret, false)

enum building {
	woodwall,
	stonewall,
	metalwall,
	crystalwall
}