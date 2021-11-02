image_xscale = -1;

if (instance_exists(o_player)) {
	cd--;
	if (cd <= 0) {
		cd = 180;
for( var i = 0 ; i < 3 ; i++ ) {
		if(!global.mute) audio_play_sound(sd_eshoot,4,false);
		with (instance_create_layer(x - (30 * i) , y,"Bullet", o_ebullet)) {
			image_xscale = -1;
			speeed = -10;
			}
		}	
	}
}
