// ahmen
if invincible exit; 
else { 
 audio_play_sound(sd_die,5,false);
 invincible = true;
 notded = false; 
 control = false; 
 alive = false;
 lives--; 
 game_set_speed(30,gamespeed_fps); 
 sprite_index = s_player_ded 
 image_speed = 0; 
 image_index = 1; 
 alarm[3] = 60;
}