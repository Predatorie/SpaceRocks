/// @description Collison

// destroy self
instance_destroy();

// add in a slight delay after death
with(obj_gameManager){
	alarm[1] = room_speed;	
}

audio_play_sound(snd_die, 1, false);

// create some debris
createDebris();

// lose a life
decrementlives();