if(lives <= 0) {
	slidetransition(TRANS_MODE.GOTO, r_gameover);
 }
 
else {
game_set_speed(60,gamespeed_fps);
slidetransition(TRANS_MODE.GOTO,room);
}