// ahmen
if invincible exit; 
else { 
 notded = false; 
 control = false; 
 lives--; 
 with (other) { 
  instance_destroy();
 } 
 game_set_speed(30,gamespeed_fps); 
 sprite_index = s_player_ded 
 image_speed = 0; 
 image_index = 1; 
 alarm[3] = 60; 
}