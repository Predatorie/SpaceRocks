/// @description Setup camera

// global camera properties
global.cameraX = 0;
global.cameraY = 0;

// local properties
target = obj_ship;

global.cameraWidth = 500;
global.cameraHeight = 500;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);

// display size
displayScale = 2;
displayWidth = global.cameraWidth * displayScale;
displayHeight = global.cameraHeight * displayScale;

// window size
window_set_size(displayWidth, displayHeight);

// size the application surface to our widow size
surface_resize(application_surface, displayWidth, displayHeight);

// size the GUI but not scaled like the surface
display_set_gui_size(global.cameraWidth, global.cameraHeight);

// wait one frame before centring the main window
alarm[0] = 1;
