if (instance_exists(o_player)) {
	if (o_player.x > x) {
		cd--;
		if (cd <= 0) {
			cd = 120;
			if (!collision_line(x,y,o_player.x,o_player.y-32,o_wall,false,false))  {
				if(!global.mute) audio_play_sound(sd_eshoot,4,false);
			with (instance_create_layer(x, y,"Bullet", o_laser)) {
				speeed = 10;
				}
			}
		}			
	}
	else if (o_player.x < x) {
		cd--;
		if (cd <= 0) {
			cd = 90;
			if (!collision_line(x,y,o_player.x,o_player.y-32,o_wall,false,false))  {
				if(!global.mute) audio_play_sound(sd_eshoot,4,false);
			with (instance_create_layer(x, y,"Bullet", o_laser)) {
				image_xscale = -1;
				speeed = -10;
				}
			}	
		}
	}
}

if (hp <= 0){
	with(instance_create_layer(x,y-15,"Enemy",o_alien_ded)){
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;
		if (sign(hsp) != 0) image_xscale = sign(hsp) * other.size;
		image_yscale = other.size;
	}
	instance_destroy();
}

