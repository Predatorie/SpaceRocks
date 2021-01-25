/// @description Draw our rooms

var centreX = room_width / 2;


switch (room) {
    case rm_game:
        // upper left of screen
		draw_text(20, 20, "SCORE: " + string(score));
		draw_text(20, 40, "LIVES: " + string(lives));
        break;
	
	case rm_start:
	
		 draw_set_halign(fa_center);
	
		 var c = c_yellow;
		 
		 draw_text_transformed_color(
		 centreX,
		 100,
		 "SPACE ROCKS",
		 3, 3, 0,
		 c, c, c, c,
		 1);
		 
		 draw_text(centreX, 180, "Score 1000 points to win");		 
		 draw_text(centreX, 220, "UP: thrust");
		 draw_text(centreX, 240, "LEFT/RIGHT: change direction");
		 draw_text(centreX, 260, "SPACE: shoot");
		 draw_text(centreX, 300, ">> PRESS ENTER TO START <<");
		 
		 draw_set_halign(fa_left);
		 
		 break;
	
	case rm_win:
	    
		 draw_set_halign(fa_center);
	
		 var c = c_lime;
		 
		 draw_text_transformed_color(
		 centreX,
		 200,
		 "YOU WON!",
		 3, 3, 0,
		 c, c, c, c,
		 1);
		 
		 draw_text(centreX, 300, "PRESS ENTER TO RESTART");		 
		 draw_set_halign(fa_left);
		 
		break;
	
	case rm_gameover:
		 
		 draw_set_halign(fa_center);
	
		 var c = c_red;
		 
		 draw_text_transformed_color(
		 centreX,
		 150,
		 "GAME OVER",
		 3, 3, 0,
		 c, c, c, c,
		 1);
		 
		 draw_text(centreX, 250, "FINAL SCORE: " + string(score)); 
		 draw_text(centreX, 300, "PRESS ENTER TO RESTART");		 
		 draw_set_halign(fa_left);
		 
		break;
	
    default:
        // code here
        break;
}