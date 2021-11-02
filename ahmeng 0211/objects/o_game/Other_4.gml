if(!global.mute) {
	switch (room) {
	
		case r_splashscreen:
		audio_play_sound(sd_intro, 3 , true);
		break;
	
		case r_level1:
		case r_level1_2:
		audio_stop_all();
		audio_play_sound(sd_lvl1, 3, true);
		break;
	
		case r_level2:
		case r_level2_2:
		audio_stop_all();
		audio_play_sound(sd_lvl2, 3 ,true);
		break;
	
		case r_level3:
		case r_level3_2:
		audio_stop_all();
		audio_play_sound(sd_lvl3, 3, true);
		break;
	
		case r_level4:
		case r_level4_2:
		audio_stop_all();
		audio_play_sound(sd_lvl4, 3, true);
		break;
	
		case r_level5:
		audio_stop_all();
		audio_play_sound(sd_lvl5_1, 3, true);
		break;
	
		case r_level5_2:
		audio_stop_all();
		audio_play_sound(sd_lvl5_2, 3, true);
		break;
	
		case r_gameover:
		audio_stop_all();
		audio_play_sound(sd_gameover, 3,true);
		break;
	
		case r_end:
		audio_stop_all();
		audio_play_sound(sd_end, 3, true);
		break;
		
		case r_level1_transition:
		case r_level1_2_transition:
		case r_level2_transition:
		case r_level2_2_transition:
		case r_level3_transition:
		case r_level3_2_transition:
		case r_level3_2_transition2:
		case r_level4_transition:
		case r_level4_2_transition:
		case r_level5_transition:
		audio_stop_all();
		break;
	}
}