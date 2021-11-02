if keyboard_check_pressed(ord("M")) {
		mute = !mute;
  if (mute) {
	  audio_pause_all();
  }
  else {
	  audio_resume_all();
  }
}