/// @description Insert description here
// You can write your code in this editor

if o_police_attack_4_left.visible = 1
{
	lives -= 1;
	instance_destroy();
	instance_create_layer(xstart, ystart, "Instances", o_player); 
	o_game.police_reset = true;
}