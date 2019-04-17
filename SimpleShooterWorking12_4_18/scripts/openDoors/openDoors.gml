if distance_to_player != noone
{
	if distance_to_nearest_enemy != noone
	{
		if distance_to_nearest_enemy > distance_to_player
		{
			if distance_to_player < 10
			{

				image_speed = 1
			}else
			{
				image_index = 0
				image_speed = 0
			}
		}else if distance_to_nearest_enemy < distance_to_player
		{
			if distance_to_nearest_enemy < 10
			{

				image_speed = 1
			}else
			{
				image_index = 0
				image_speed = 0
			}
		}
	}else if distance_to_player < 10
	{
		image_speed = 1
	}else 
	{
		image_index = 0
		image_speed = 0
	}
}