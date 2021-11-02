if (instance_exists(o_player)) {
	if (o_player.x > x) {
		cd--;
		if (cd <= 0) {
			cd = 60;
			if (!collision_line(x,y,o_player.x,o_player.y-32,o_wall,false,false))  {
			if(!global.mute) audio_play_sound(sd_eshoot,4,false);
			with (instance_create_layer(x, y,"Bullet", o_moneyproj)) {
				speeed = 10;
				}
			}
		}			
	}
	else if (o_player.x < x) {
		cd--;
		if (cd <= 0) {
			cd = 60;
			if (!collision_line(x,y,o_player.x,o_player.y-32,o_wall,false,false))  {
			if(!global.mute) audio_play_sound(sd_eshoot,4,false);
			with (instance_create_layer(x, y,"Bullet", o_moneyproj)) {
				image_xscale = -1;
				speeed = -10;
				}
			}	
		}
	}
}

if(room == r_level5_2) {
	dc--;
	if(dc == 0) {
		instance_create_layer(random_range(90, 1280), 30, "Money", o_money);
		dc = 120;
	}
}

