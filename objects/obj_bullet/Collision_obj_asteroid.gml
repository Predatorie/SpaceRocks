/// @description Collision handler

// destroy the bullet
instance_destroy();

// destroy the asteroid
with (other)
{
	instance_destroy()	;
	
	switch(sprite_index)
	{
		case spr_asteroid_huge:
			repeat(2)
			{
				var inst = instance_create_layer(x, y, "Instances", obj_asteroid);	
				inst.sprite_index = spr_asteroid_medium;
			}
			
			break;
			
		case spr_asteroid_medium:
			repeat(4)
			{
				var inst = instance_create_layer(x, y, "Instances", obj_asteroid);	
				inst.sprite_index = spr_asteroid_small;
			}
			
			break;
	}
	
	// debris
	repeat(10)
	{
		instance_create_layer(x, y, "Instances", obj_debris);	
	}
}	

