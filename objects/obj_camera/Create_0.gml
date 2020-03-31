// set up camera

cam = view_camera[0];
follow = obj_player;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
// based on view rectangle and x y position and half of that
xTo = xstart;
yTo = ystart;
// original destination of camera is where it'll start