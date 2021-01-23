/// @description Collison

instance_destroy();

// debris
repeat(10)
{
	instance_create_layer(x, y, "Instances", obj_debris);	
}
