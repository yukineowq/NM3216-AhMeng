fall = false;

if o_banana.visible
{
	if(alive) {
		global.bananacount++;

		with (other) {
		instance_destroy();
		}
		slidetransition(TRANS_MODE.NEXT,room);
	}
}