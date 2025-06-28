/*
When a ball collides with the basket, change the score variable. 
Display final score to the screen. 
*/

// Scoring system for the game

int score = 0; // Track player score

// Point values based on ball size
int pointsForBall1 = 5; // Largest (size 50)
int pointsForBall2 = 3; // Third largest (size 30)
int pointsForBall3 = 1; // Smallest (size 20)
int pointsForBall4 = 4; // Second largest (size 40)
int pointsForBall5 = 2; // Fourth largest (size 25)

void addScore(int ballNumber) {
  // Add points based on which ball was caught
  if (ballNumber == 1) score = score + pointsForBall1;
  if (ballNumber == 2) score = score + pointsForBall2;
  if (ballNumber == 3) score = score + pointsForBall3;
  if (ballNumber == 4) score = score + pointsForBall4;
  if (ballNumber == 5) score = score + pointsForBall5;
}

void showScore() {
  // Show the final score on the screen
  fill(255); // White text
  textSize(50);
  text("Game Over! Score: " + score, width/2, height/2);
}
