/// @description Initialization

// pick a random image
sprite_index = choose(
	spr_asteroid_small,
	spr_asteroid_medium,
	spr_asteroid_huge);

// rotate the object
direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

// set speed based upon sprite size
switch (sprite_index) {
    case spr_asteroid_small:
        speed = 1.4;
        break;
	case spr_asteroid_medium:
        speed = 1.25;
        break;
	case spr_asteroid_huge:
        speed = 1;
        break;
    default:
        speed = 1;
        break;
}