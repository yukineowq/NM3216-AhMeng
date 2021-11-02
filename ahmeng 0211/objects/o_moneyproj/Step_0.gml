x += lengthdir_x(speeed,direction);
y += lengthdir_y(speeed,direction);

if (place_meeting(x,y,o_wall)) && (image_index != 0)  {
	while (place_meeting(x,y,o_wall)) {
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);
	}
	speeed = 0;
	instance_destroy();
}