/// @description Collision handler

// destroy the bullet
instance_destroy();

audio_play_sound(snd_die, 1, false);

// increment our score
updateScore();

// destroy the asteroid
destoryAsteroid();

