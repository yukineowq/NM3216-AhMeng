if (instance_exists(o_player)) && (point_in_circle(o_player.x,o_player.y,x,y,64)) && (!instance_exists(o_text)) {
		with (instance_create_layer(x,y-64,"Instances",o_text)) {
			text = other.text;
			length = string_length(text);
		}
}

if(!place_meeting(x, y+1, o_wall)) {
	visible = false;
}

else visible = true;