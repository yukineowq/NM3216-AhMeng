/// @description Insert description here
// You can write your code in this editor
if (instance_exists(o_player)) {
	if (place_meeting(x, y - 1, o_player)) {
		collapse = true;
	}
	
	if (collapse) {
		collapsetimer--;
		x += random_range(-shake,shake);
		
		if (collapsetimer <= 0) {
			collision = false;
			y += approach(0 ,10 ,20);
			timer--;
		}
	}

	if(timer == 0) {
		instance_create_layer(xstart, ystart, "Instances", o_platform);
	}
}
