resx = 640;
resy = 320;
scale = 2;

view_enabled = true;
view_visible[0] = true;


cam = camera_create_view(0,0, resx, resy);
view_set_camera(0, cam)

window_set_size(resx * scale , resy * scale);
surface_resize(application_surface, resx * scale, resy * scale);

display_set_gui_size(resx, resy);
