var _camx = camera_get_view_x(cam);
var _camy = camera_get_view_y(cam);
var _x = o_player.x - resx/2;
var _y = o_player.y- resy/2;

_x = clamp(_x, 0, room_width - resx);
_y = clamp(_y, 0, room_height - resy);

_camx = lerp(_camx, _x, 0.1);
_camy = lerp(_camy, _y, 0.1);

camera_set_view_pos(cam, _camx, _camy);