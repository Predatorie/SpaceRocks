/// @description spawns asteroid

if (room != rm_game){
	exit;
}

spawnObjectsOffCamera(obj_asteroid, 1);

// reset for 1 seconds
alarm[0] = room_speed * 1;