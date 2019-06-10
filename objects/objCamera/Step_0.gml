
if(keyboard_check_pressed(ord("Q")) && size != 1){
	size--;
	windowHeight = windowHeightBase * size;
	windowWidth = windowWidthBase * size;
	surface_resize(application_surface, windowWidth, windowHeight);
	window_set_size(windowWidth, windowHeight);
	alarm[0] = 1;
}else if(keyboard_check_pressed(ord("E")) && size != 2){
	size++; 
	windowHeight = windowHeightBase * size;
	windowWidth = windowWidthBase * size;
	surface_resize(application_surface, windowWidth, windowHeight);
	window_set_size(windowWidth, windowHeight);
	alarm[0] = 1;
}



var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(view_camera[0], vm);
var pm = matrix_build_projection_ortho(camWidth * zoom, camHeight * zoom, 10, 10000);
camera_set_proj_mat(view_camera[0], pm);



