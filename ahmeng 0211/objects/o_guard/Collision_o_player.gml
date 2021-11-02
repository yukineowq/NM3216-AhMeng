/// @description Insert description here
// You can write your code in this editor
if(o_player.invincible) { 
	exit;
}
else {
	instance_destroy();
	instance_create_layer(xstart, ystart, "Instances", o_police);
}