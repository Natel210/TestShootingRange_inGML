/// @description Insert description here
// You can write your code in this editor
var temp_camera = view_get_camera(view_current);
var temp_camerax1 = camera_get_view_border_x(temp_camera);
var temp_cameray1 = camera_get_view_border_y(temp_camera);
var temp_camerax2 = camera_get_view_x(temp_camera);
var temp_cameray2 = camera_get_view_y(temp_camera);
camera_set_view_pos(temp_camera,temp_camerax2 +10,temp_cameray2 );

