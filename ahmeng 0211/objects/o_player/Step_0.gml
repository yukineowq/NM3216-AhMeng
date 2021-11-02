//input
if(control) {
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up) or keyboard_check(vk_space);

var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;
}

if (place_meeting(x, y + 1, o_wall) && key_jump) {
	if(!global.mute) audio_play_sound(sd_jump,3,false);
	vsp = -7.6*jump - (global.bananacount*0.5);
}

//horizontal collision
if (place_meeting(x + hsp, y, o_wall)) {
	while (!place_meeting(x + sign(hsp), y, o_wall)) {
		x = x + sign(hsp);	
	}
	hsp = 0;	
}

x = x + hsp;

//vertical collision
if (place_meeting(x, y + vsp, o_wall)) {
	while (!place_meeting(x, y + sign(vsp), o_wall)){
		y = y + sign(vsp);	
	}
	vsp = 0;	
}
y = y + vsp;

//port through saferoom wall
if(place_meeting(x + 1 + hsp, y, o_saferoomdoor)) {	
	if(!global.mute) audio_play_sound(sd_door,5,false);
	instance_destroy();
	instance_create_layer(347, 692, "Instances", o_player);
}

//animation
if(notded) {
	if(!place_meeting(x, y + 1, o_wall)) {
		sprite_index = s_player_j;
		image_speed = 0;
		if(sign(vsp) > 0) image_index = 1; else image_index=0;
		}
	
	else {
		image_speed = 1;
		if (hsp == 0) {
			sprite_index = s_player;
			}
/*for running animation	
	else {
		sprite)index = s_player_r;
		} */
		}
}
	
if (hsp != 0) image_xscale = sign(hsp);

//resize
xsize = 1 + (global.bananacount*0.25);
ysize = 1 + (global.bananacount*0.25);
image_xscale = xsize;
image_yscale = ysize;

//transition change sprite
if (transition = true) {
	image_speed = 0;
	sprite_index = s_player_g;
	if(sprite_index == s_player_g) {
		transitiontimer--;
		if(transitiontimer%12 == 0) {
			image_index = 1;
		}
		else {
			image_index = 0;
		}
	}
	if (transitiontimer <= 0) {
		image_index = 1;
		trans--;
	}
	if (trans == 0) {
		slidetransition(TRANS_MODE.NEXT,room);
		trans = 60;
	}
}

//powerup skins
if(kiwi) {
	sprite_index = s_player_green;
	ktimer--;
}

if(strawberry) {
	sprite_index = s_player_red;
	stimer--;
}

if(pineapple) {
	sprite_index = s_player_yellow;
	ptimer--;
}


//fall off respawning platforms if stucked
if(fall) {
	while(place_meeting(x, y, o_wall)) {
		y++;
	}
}
	