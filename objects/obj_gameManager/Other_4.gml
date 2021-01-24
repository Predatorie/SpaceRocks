/// @description Manages spawning in asteroids

if (room == rm_game){
	
	if (audio_is_playing(msc_song)){
		audio_stop_sound(msc_song);
	}
	
	audio_play_sound(msc_song, 2, true);
	
	// spawn 6 at start
	repeat(6){
		var xpos = choose(
			irandom_range(0, room_width * 0.3),
			irandom_range(room_width * 0.7, room_width)
		);	
	
		var ypos = choose(
			irandom_range(0, room_height * 0.3),
			irandom_range(room_height * 0.7, room_height)
		);	
	
	
		instance_create_layer(xpos, ypos, "Instances", obj_asteroid);
	}
	
	// fires every 60 frames == 1 second)
	alarm[0] = room_speed * 1;
}
