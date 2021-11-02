// ahmen
if invincible exit;

else {
	if(!global.mute) audio_play_sound(sd_die,5,false);
	notded = false;
	control = false;
	lives--;
	alive = false;
	game_set_speed(30,gamespeed_fps);
	sprite_index = s_player_ded
	image_speed = 0;
	image_index = 1;
	alarm[3] = 60;
		invincible = true;
}