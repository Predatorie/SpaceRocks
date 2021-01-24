/// @description spawns asteroid

if (room != rm_game){
	exit;
}

if (choose(0, 1) == 0){

	// spawns on either side
	var xpos = choose(0, room_width);
	var ypos = irandom_range(0, room_height);

} else {
	
	// spawns on either top or bottom
	var xpos = irandom_range(0, room_width);
	var ypos = choose(0, room_height);
}

instance_create_layer(xpos, ypos, "instances", obj_asteroid);

// reset for 4 seconds
alarm[0] = room_speed * 4;