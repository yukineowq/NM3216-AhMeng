//player invincible
if(!global.mute) audio_play_sound(sd_powerup,5,false);
pineapple = true;
invincible = true;
notded = false;
//sprite_index = s_player_yellow;
alarm [0] = 10*room_speed;

//disappear
with (other) {
	visible = false;
	mask_index = s_nothing;
}