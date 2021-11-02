//ahoy welcome aboard!

with (other) {
	visible = false;
	mask_index = s_nothing;
}

move_towards_point(x, -200, 0.25);

if(y == 0) {
	slidetransition(TRANS_MODE.NEXT,room);
}

	