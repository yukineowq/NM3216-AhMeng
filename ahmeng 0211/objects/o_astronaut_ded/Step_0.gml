/// @description Insert description here
// You can write your code in this editor
if (done == 0) {

vsp += grv;

	//horizontal collision
	if (place_meeting(x + hsp, y, o_wall)){
		while (!place_meeting(x + sign(hsp), y, o_wall)){
			x += sign(hsp);	
		}
		hsp = 0;
	}
	x += hsp;

	//vertical collision
	if (place_meeting(x, y + vsp, o_wall)) {
		if (vsp > 0) {
			done = 1;
			image_index = 1;
		}
		while (!place_meeting(x, y + sign(vsp), o_wall)) {
			y += sign(vsp);	
		}
		vsp = 0;
	}
	y += vsp;
}

if(instance_exists(o_astronaut_ded)) {
	timer--;
}

if (timer == 0) {
	instance_destroy();
}