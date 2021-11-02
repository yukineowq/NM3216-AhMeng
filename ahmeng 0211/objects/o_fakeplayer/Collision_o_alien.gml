// ahmen
if invincible exit; 
else {
 audio_play_sound(sd_die,5,false);
 notded = false; 
 control = false;
 alive = false;
 lives--;
 invincible = true;
 
 with (other) { 
 instance_change(o_alien_ded, true);
 } 
 game_set_speed(30,gamespeed_fps); 
 sprite_index = s_player_ded 
 image_speed = 0; 
 image_index = 1; 
 alarm[3] = 60;
}