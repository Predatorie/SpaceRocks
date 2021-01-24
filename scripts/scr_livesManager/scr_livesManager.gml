
/// @function                 decrementlives();
/// @description              decrements the players lives count by 1.
function decrementlives(){
	
	lives -= 1;
	
	if (lives <= 0)
	{
		// game over	
	}

}

/// @function                 incrementlives();
/// @description              increments the players lives count by 1.
function incrementlives(){
	lives += 1;
}