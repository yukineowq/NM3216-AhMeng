l += spid;
current = string_copy(text,1,floor(l));

draw_set_font(f_sign);
if (h == 0) h = string_height(text);
w = string_width(current);

if (l >= length) && (keyboard_check_pressed(vk_anykey)){
	instance_destroy();
}