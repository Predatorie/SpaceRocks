/// @function                 spawnObjectsOffCamera();
/// @param {object}  _object  the object type to spawn
/// @param {int}     _number  the number of objects to spawn
/// @description              spawns objects off screen
function spawnObjectsOffCamera(_object, _number){
 
    // exists to ensure the asteroid sprites are not sticking into the edge of the camera
    // when they spawn
    var padding = 64;
	var _x;
	var _y;
	
	show_debug_message(string(global.cameraX) + " " + string(global.cameraY));

	repeat(_number){
		
		// pick a random position
		_x = random_range(0, room_width);
		_y = random_range(0, room_height);
	
		// loops until the point chosen above is outside of the camera.
		// may cause unnecessary processing, but is fine for the simplicity of this game.
		while(point_in_rectangle(
		_x,	_y,
		global.cameraX - padding, 
		global.cameraY - padding,
		global.cameraX + global.cameraWidth + padding,
		global.cameraY + global.cameraHeight + padding)){
			
			_x = random_range(0, room_width);
			_y = random_range(0, room_height);
			
			//show_debug_message("in while loop");
		}
		
	  instance_create_layer(_x, _y, "Instances", _object);
	}

}
