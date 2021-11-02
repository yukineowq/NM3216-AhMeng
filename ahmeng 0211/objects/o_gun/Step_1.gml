x = o_player.x;
y = o_player.y-16;

firingdelay -= 1;

if (keyboard_check(vk_left)) {
	image_xscale = -1;
}
else if (keyboard_check(vk_right)) {
	image_xscale = 1;
}
if (control) {
	if (keyboard_check_pressed(ord("C")) && (firingdelay < 0)) {
		firingdelay = 5;
		recoil = 4;
		if(!global.mute) audio_play_sound(sd_shoot,5,false);
		if(image_xscale = -1) {
		with (instance_create_layer(x,y,"Bullet",o_bullet)) {
			speeed = -25;
			image_xscale = -1;
			}
		}
	
		else {
		with (instance_create_layer(x,y,"Bullet",o_bullet)) {
			speeed = 25;
			}	
		}
	}
}

recoil = max(0, recoil - 1);

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);