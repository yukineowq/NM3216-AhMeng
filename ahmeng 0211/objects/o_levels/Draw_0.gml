switch(room) {
	case r_level1:
	draw_sprite(s_levels, 0, 330, 10);
		break;
		
	case r_level1_2:
	draw_sprite(s_levels, 1, 70, 10);
		break;
	
	case r_level2:
	draw_sprite(s_levels, 2, 70, 10);
		break;
	
	case r_level2_2:
	draw_set_colour(c_black);
	draw_sprite(s_levels, 3, 70, 10);
		break;
	
	case r_level3:
	draw_sprite(s_levels, 4, 70, 10);
		break;
	
	case r_level3_2:
	draw_sprite(s_levels, 5, 70, 10);
		break;
	
	case r_level4:
	draw_sprite(s_levels, 6, 70, 10);
		break;
	
	case r_level4_2:
	draw_sprite(s_levels, 7, 70, 10);
		break;
	
	case r_level5:
	draw_sprite(s_levels, 8, 70, 10);
		break;
	
	case r_level5_2:
	draw_sprite(s_levels, 9, 70, 10);
		break;
}