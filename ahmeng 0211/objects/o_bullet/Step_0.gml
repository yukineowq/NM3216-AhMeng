/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(speeed,direction);
y += lengthdir_y(speeed,direction);

if (place_meeting(x,y,o_wall)) && (image_index != 0) {
	while (place_meeting(x,y,o_wall)) {
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);
	}
	speeed = 0;
	instance_change(o_spark,true);
}



if (place_meeting(x,y,p_shootable)) {
	with (instance_place(x,y,p_shootable)) {
		hp--;
		flash = 3;
		hitfrom = other.direction;
	}
	instance_destroy();
}
