/// @function                 updateScore();
/// @description              updates the players score based on asteroid destoyed.
function updateScore(){

	switch (other.sprite_index)
	{
		case spr_asteroid_huge:
			score += 1;
			break;
		
		case spr_asteroid_medium:
			score += 3;
			break;
		
		case spr_asteroid_small:
			score += 5;
			break;
	}

}