//jump height++
kiwi = true;
if(!global.mute) audio_play_sound(sd_powerup,5,false);
jump = 1.1;
notded = false;
//sprite_index = s_player_green;
alarm [1] = 10*room_speed;

with (other) {
	visible = false;
	mask_index = s_nothing;
	}