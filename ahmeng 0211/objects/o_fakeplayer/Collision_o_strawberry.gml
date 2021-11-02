//movement speed ++
audio_play_sound(sd_powerup,5,false);
walksp = 6;
notded = false;
sprite_index = s_player_red;

//disable after 10s
alarm[2] = 10 * room_speed;

//disappear
with (other) {
	visible = false;
	mask_index = s_nothing;
}