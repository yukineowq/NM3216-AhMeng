//credit, help, esc
if (room == r_splashscreen) {
	if keyboard_check(ord("C")) {
		credits = 1;
	}
	else credits = 0;
	
	if keyboard_check(ord("H")) {
		help = 1;
	}
	else help = 0;

	if keyboard_check(vk_escape) {
		exiit = 1;
		if(exiit) {
			if keyboard_check_pressed(vk_enter) {
				game_end();
			}
		}
	}
	else exiit = 0;
}

//intro
if(room == r_intro) {
	if(keyboard_check_pressed(vk_right)) {
		slidetransition(TRANS_MODE.NEXT, room);
	}
}

if(room == r_intro2) {
	if(keyboard_check_pressed(vk_left)) {
		slidetransition(TRANS_MODE.GOTO, r_intro);
	}
	else if (keyboard_check_pressed(vk_space)) {
		slidetransition(TRANS_MODE.NEXT, room);
	}
}

//pause & restart
if (room == r_intro) or (room == r_intro2) or (room == r_level1) or (room == r_level1_2) or (room == r_level2) or (room == r_level2_2)
 or (room == r_level3) or (room == r_level3_2) or (room == r_level4) or (room == r_level4_2) or (room == r_level5) or (room == r_level5_2) {

	if keyboard_check_pressed(vk_escape) {
	    paused = !paused;
	    if (paused == 0) {
	        instance_activate_all();
	        surface_free(paused_surf);
	                paused_surf = -1;
			
	        }
	    }
	
	if keyboard_check(ord("R")) {
		restart = 1;
		if(restart) {
			instance_create_layer(room_width/2, room_height/2, "Restart", o_restartt);
			if keyboard_check_pressed(vk_enter) {
				game_restart();
			}
		}
	}
		else {
			restart = 0;
			with(o_restartt) instance_destroy();
		}
}

//end
if(room == r_end) {
	if(keyboard_check_pressed(vk_space)) {
		slidetransition(TRANS_MODE.NEXT, room);
	}
}


//animation
switch (room) {
	
	case r_level1_transition:
	with(o_fakeplayer) {
		control = false;
		move_towards_point(1200, o_fakeplayer.y, 1);
	}
	break;
	
	case r_level1_2_transition:
	with(o_fakeplayer) {
		control = false;
		move_towards_point(294, o_fakeplayer.y, 1);
	}
	break;
	
	case r_level2_transition:
	with(o_fakeplayer) {
		control = false;
		move_towards_point(400, o_fakeplayer.y, 1);
	}
	break;
	
	case r_level2_2_transition:
	break;
	
	case r_level3_transition:
	with(o_fakeplayer) {
		control = false;
		move_towards_point(204, o_fakeplayer.y, 1);
	}
	break;
	
	case r_level3_2_transition:
	with(o_fakeplayer) {
		control = false;
		move_towards_point(310, o_fakeplayer.y, 1);
	}
	break;
	
	case r_level3_2_transition2:
	with(o_player) {
		control = false;
		move_towards_point(200, o_player.y, 1);
	}
	break;
	
	case r_level4_transition:
	with(o_fakeplayer) {
		control = false;
		move_towards_point(1120, o_fakeplayer.y, 1);
	}
	break;
	
	case r_level4_2_transition:
	with(o_fakeplayer) {
		control = false;
		move_towards_point(1184, o_fakeplayer.y, 1);
	}
	break;
	
	case r_level5_transition:
	with(o_fakeplayer) {
		control = false;
		move_towards_point(128, o_fakeplayer.y, 1);
	}
	break;

//end
	case r_end:
	with(o_fakefakespaceship) {
		move_towards_point(680, 640, 0.5);
	}
	
}

//mute
if keyboard_check_pressed(ord("M")) {
 global.mute = !global.mute;
  if (global.mute) {
	  audio_pause_all();
  }
  else {
	  audio_resume_all();
  }
}
