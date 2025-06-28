/* 
This is what the player sees when starting the game.
This screen has the instructions and point values
for the 5 unique ball items. 
*/


void displayMainMenu() {
  // Draw a black background for the menu screen
  pushMatrix();
  translate(0, 0, 100); // In front of space background (z=-200)
  fill(0, 0, 0); // Black
  rectMode(CORNER);
  rect(0, 0, width, height); // Full screen rectangle
  
  // Draws the game title and basic instructions
  fill(255); // White text
  textAlign(CENTER, CENTER);
  textSize(60);
  text("Ball Drop Game", width/2, height/2 - 200); // Main title
  textSize(30);
  text("To play, use arrow keys to move the basket", width/2, height/2 -150);
  
  // Point values for each colored ball
  textSize(40);
  text("Point Values:", width/2, height/2 - 100);
  textSize(30);
  fill(255, 0, 0); // Red
  text("Red Ball: 5 points", width/2, height/2 - 50);
  fill(255, 255, 0); // Yellow
  text("Yellow Ball: 4 points", width/2, height/2 - 10);
  fill(0, 255, 0); // Green
  text("Green Ball: 3 points", width/2, height/2 + 30);
  fill(255, 0, 255); // Purple
  text("Purple Ball: 2 points", width/2, height/2 + 70);
  fill(0, 0, 255); // Blue
  text("Blue Ball: 1 point", width/2, height/2 + 110);
  
  // Instruction to start the game
  fill(255); // White text
  textSize(40);
  text("Press SPACE to Start!", width/2, height/2 + 200);
  
  popMatrix();
}
