/// @description Manages spawning in asteroids

if (room == rm_game){
	
	//spawnObjectsOffCamera(obj_asteroid, 40);
	
	if (audio_is_playing(msc_song)){
		audio_stop_sound(msc_song);
	}
	
	audio_play_sound(msc_song, 2, true);
	
	
	// fires every 60 frames == 1 second)
	alarm[0] = room_speed * 1;
}
