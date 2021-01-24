/// @function                 destoryAsteroid();
/// @description              destorys the asteroid and split into additional asteroids based upon its size.
function destoryAsteroid(){

// the asteroid that was hit
with (other)
{
	// destroy it
	instance_destroy();
	
	// split into additional asteroids based upon its size
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
	
	createDebris();
}	
}

/// @function                 createDebris();
/// @description              creates debris
function createDebris(){
	
	// debris regardless of size
	repeat(10)
	{
		instance_create_layer(x, y, "Instances", obj_debris);	
	}
}