if (instance_exists(o_player)) {
	if (place_meeting(x, y - 1, o_player)) {
		collapse = true;
	}
	
	if (collapse) {
		collapsetimer--;
		x = random_range(x-shake,x+shake);
		if(collapsetimer == 30) {
			sprite_index = s_platform_long_2_c;
		}
		
		if (collapsetimer <= 0) {
			collision = false;
			y += approach(0 ,10 ,20);
			timer--;
		}
	}

	if(timer == 0) {
		instance_create_layer(xstart, ystart, "Instances", o_platform_long_2);
	}
}

//deactivating collision upon collapse
if (collision == false) {
	mask_index = s_nothing;
    image_alpha -= 0.01;
    if(image_alpha == 0) {
		instance_destroy();
    }
}