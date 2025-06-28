/* 
This is the main file.
I want to keep this file super basic
and easy to understand. Other files will be topic/object specific
*/

// Global variables for tracking key states
boolean moveLeft = false;
boolean moveRight = false;

// Game timing
float startTime = 0;
float gameDuration = 20000; // 20 seconds in milliseconds

// Game state: 0 = menu, 1 = playing, 2 = game over
int gameState = 0;

// Setup for background, objects, and items
void setup() {
  size(1600, 1000, P3D);
  setupBackgroundOne();
  setupObjectOne();
  setupObjectTwo();
  setupInteractiveItems();
}


void draw() {
  // Main menu screen
  if (gameState == 0) {
    displayMainMenu();  // Display menu
  } 
  
  // Game is running
  else if (gameState == 1) {
    // Check if the game is still within the allowed time (20 seconds)
    if (millis() - startTime < gameDuration) {
      gameActive = true; // Keep game running
      backgroundOne.display(); // Show game background
      
      objectOne.display();  // Display the cannon (at top of screen)
      
      // Handle continuous movement based on key states
      if (moveLeft) objectTwo.moveLeft();
      if (moveRight) objectTwo.moveRight();
      
      objectTwo.display();  // Display ball basket
      
      
      updatePhysics();  // Update physics (gravity, collisions, ball drops)
      
      // Display all interactive balls
      ball1.display();
      ball2.display();
      ball3.display();
      ball4.display();
      ball5.display();
      
    } else {
      gameActive = false; // Stop game
      gameState = 2; // Move to game over state
    }
  } 
  
  else if (gameState == 2) {
    // Game over
    backgroundOne.display(); // Still show background
    showScore(); // Show final score
  }
}

void keyPressed() {
  // Handle arrow key input for movement
  if (key == CODED) {
    if (keyCode == LEFT) moveLeft = true;
    else if (keyCode == RIGHT) moveRight = true;
  }
  
  // If on main menu and space is pressed start the game
  if (key == ' ' && gameState == 0) {
    gameState = 1;
    startTime = millis(); // Start the timer
  }
}

void keyReleased() {
  // Stop movement when keys are released
  if (key == CODED) {
    if (keyCode == LEFT) moveLeft = false;
    else if (keyCode == RIGHT) moveRight = false;
  }
}
