vsp += grv;

//suicide prevention
if (grounded) && (fearh) && (!place_meeting(x + (sprite_width/2), y + 1, o_wall)) {
	hsp = -hsp;
		}
		
//horizontal collision
if (place_meeting(x + hsp, y, o_wall)){
	while (!place_meeting(x + sign(hsp), y, o_wall)){
		x += sign(hsp);	
	}
	hsp = -hsp;
}
x += hsp;

//vertical collision
if (place_meeting(x, y + vsp, o_wall)){
	while (!place_meeting(x, y + sign(vsp), o_wall)){
		y += sign(vsp);	
	}
	vsp = 0;
}
y += vsp;

//animation
if(!place_meeting(x, y + 1, o_wall)) {
	grounded = false;
	sprite_index = s_astronaut;
	image_speed = 0;
	if(sign(vsp) > 0) image_index = 1; else image_index = 0;
}
	
else {
	grounded = true;
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = s_astronaut;
	}
	else {
		sprite_index = s_astronaut; //change to run
	} 
}
	
if (hsp != 0) image_xscale = size*sign(hsp);
