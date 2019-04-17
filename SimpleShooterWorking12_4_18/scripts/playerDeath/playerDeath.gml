if thisHealth <= 0 
{
	instance_destroy()
	instance_create_depth(0, 0, -100, obj_death)
}