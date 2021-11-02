/// @description Insert description here
// You can write your code in this editor

lives -= 1;
instance_destroy();
instance_create_layer(xstart, ystart, "Instances", o_player); 
o_game.police_reset = true;