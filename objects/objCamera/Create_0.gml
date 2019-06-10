/// @description 
x = room_width / 2;
y = room_height / 2; 

size = 2;
zoom = 1; //With the current Camera System, doesn't work 
windowHeightBase = 400; // Game size // Camera Size
windowWidthBase = 256; 
windowHeight = windowHeightBase * size;
windowWidth = windowWidthBase * size;
camHeight = windowHeightBase;
camWidth = windowWidthBase;

surface_resize(application_surface, windowWidth, windowHeight);
window_set_size(windowWidth, windowHeight);

view_camera[0] = camera_create();
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(camWidth * zoom, camHeight * zoom, 10, 10000);

camera_set_view_mat(view_camera[0], vm);
camera_set_proj_mat(view_camera[0], pm); 

alarm[0] = 1; 
