mywall = instance_create_layer(x,y,"Instances",o_wall);
with (mywall) {
	image_xscale = other.sprite_width / sprite_width;
	image_yscale = other.sprite_height / sprite_height;
}