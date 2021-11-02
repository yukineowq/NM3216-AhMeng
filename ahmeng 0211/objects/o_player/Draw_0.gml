/// @description Insert description here
// You can write your code in this editor
draw_self();

if(ktimer < 120) {
	if!(ktimer % 10) {
	shader_set(sh_white);
	}
}

if(stimer < 120) {
	if!(stimer % 10) {
	shader_set(sh_white);
	}
}

if(ptimer < 120) {
	if!(ptimer % 10) {
	shader_set(sh_white);
	}
}
draw_self(); 
shader_reset();
