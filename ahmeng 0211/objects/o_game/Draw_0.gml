switch(room) {
	case r_splashscreen:
	if (credits) {
		draw_sprite(s_credit, 0, room_width/2, room_height/2);
	}
	if (help) {
		draw_sprite(s_controls, 0, room_width/2, room_height/2);
	}
	if (exiit) {
		draw_sprite(s_exit, 0, room_width/2, room_height/2);
	}
	break;
		
	case r_level1:
	
	for(var i = 0; i < lives; i++) {
		draw_sprite(s_health, 0, 320 + (40*i), 25 );
	}
	
	if paused == true {
		if !surface_exists(paused_surf) {
		  if paused_surf == -1 {
        instance_deactivate_all(true);
        }
	    
		paused_surf = surface_create(room_width, room_height);
	    surface_set_target(paused_surf);
	    draw_surface(application_surface, 0, 0);
	    surface_reset_target();
	 }
	 
	 else {
	    draw_surface(paused_surf, 0, 0);
	    draw_set_alpha(1);
	    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	    draw_set_alpha(1);
	    draw_set_halign(fa_center);
		draw_sprite(s_controls, 0, room_width/2, room_height/2);
	    draw_text_transformed_colour(room_width / 2, room_height / 6, "PAUSED", 2, 2, 0, c_white, c_white, c_white, c_white, 1);
	    draw_set_halign(fa_left);
	    }
	}

	
	break;
		
	case r_level1_2:
	case r_level2:
	case r_level2_2:
	case r_level3:
	case r_level3_2:
	case r_level4:
	case r_level4_2:
	case r_level5:
	case r_level5_2:
	
	for(var i = 0; i < lives; i++) {
		draw_sprite(s_health, 0, 60 + (40*i), 25 );
	}
		
	if paused == true {
		if !surface_exists(paused_surf) {
		  if paused_surf == -1 {
        instance_deactivate_all(true);
        }
	    
		paused_surf = surface_create(room_width, room_height);
	    surface_set_target(paused_surf);
	    draw_surface(application_surface, 0, 0);
	    surface_reset_target();
	 }
	
	else {
	    draw_surface(paused_surf, 0, 0);
	    draw_set_alpha(1);
	    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	    draw_set_alpha(1);
	    draw_set_halign(fa_center);
		draw_sprite(s_controls, 0, room_width/2, room_height/2);
	    draw_text_transformed_colour(room_width / 2, room_height / 6, "PAUSED", 2, 2, 0, c_white, c_white, c_white, c_white, 1);
	    draw_set_halign(fa_left);
	    }
	}
	
	if (restart) {
		draw_set_alpha(1);
		draw_sprite(s_exit, 0, room_width/2, room_height/2);
	}
	
	break;

}