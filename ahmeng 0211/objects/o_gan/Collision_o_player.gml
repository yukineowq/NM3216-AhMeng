/// gun++
if(!global.mute) audio_play_sound(sd_gun,5,false);
global.tedbundy = true;
instance_create_layer(o_player.x,o_player.y,"Gun",o_gun);
instance_destroy();

with (instance_create_layer(x,y-64,"Instances",o_text)) {
	text = other.text;
	length = string_length(text);
	}
