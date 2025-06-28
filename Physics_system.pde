/* 
This file is for physics calculations like:
- Ball movement (falling)
- Collision detection with basket
- Timing ball drop
- Haveing balls disappear
*/


float lastTimeBallDropped = 0; // Tracks time of last ball drop
float waitTime = 350; // Wait 0.35 seconds betwen drops
boolean gameActive = true; // Track if game is still going

// Check if any balls collide with the basket
void checkIfBallsHitBasket() {
  // If a ball is within the vertical range of the basket and
  // horizontally close to the basket (plus or minus 200 units), register a hit. 
  if (ball1.y > 850 && ball1.y < 950 && abs(ball1.x - objectTwo.x) < 200) {
    ball1.y = -1000; // Remove ball from screen
    ball1.isActive = false; // Mark as inactive
    addScore(1); // Add points for ball1
  }
  if (ball2.y > 850 && ball2.y < 950 && abs(ball2.x - objectTwo.x) < 200) {
    ball2.y = -1000;
    ball2.isActive = false;
    addScore(2); // Add points for ball2
  }
  if (ball3.y > 850 && ball3.y < 950 && abs(ball3.x - objectTwo.x) < 200) {
    ball3.y = -1000;
    ball3.isActive = false;
    addScore(3); // Add points for ball3
  }
  if (ball4.y > 850 && ball4.y < 950 && abs(ball4.x - objectTwo.x) < 200) {
    ball4.y = -1000;
    ball4.isActive = false;
    addScore(4); // Add points for ball4
  }
  if (ball5.y > 850 && ball5.y < 950 && abs(ball5.x - objectTwo.x) < 200) {
    ball5.y = -1000;
    ball5.isActive = false;
    addScore(5); // Add points for ball5
  }
}

// Randomly drop a new ball from the top
void dropNewBall() {
  // Stop dropping if game is over
  if (!gameActive) return;
  
  // Only drop a ball if enough time has passed since the last drop
  if (millis() - lastTimeBallDropped < waitTime) return;
  
  // Look for a ball that's not in use (that is inactive)
  if (!ball1.isActive) {
    ball1.x = random(0, 1600); // Drop from a random x-position
    ball1.y = 0;
    ball1.isActive = true;
    lastTimeBallDropped = millis(); // Reset drop timer
    return;
  }
  // Repeat for each ball
  if (!ball2.isActive) {
    ball2.x = random(0, 1600);
    ball2.y = 0;
    ball2.isActive = true;
    lastTimeBallDropped = millis();
    return;
  }
  if (!ball3.isActive) {
    ball3.x = random(0, 1600);
    ball3.y = 0;
    ball3.isActive = true;
    lastTimeBallDropped = millis();
    return;
  }
  if (!ball4.isActive) {
    ball4.x = random(0, 1600);
    ball4.y = 0;
    ball4.isActive = true;
    lastTimeBallDropped = millis();
    return;
  }
  if (!ball5.isActive) {
    ball5.x = random(0, 1600);
    ball5.y = 0;
    ball5.isActive = true;
    lastTimeBallDropped = millis();
    return;
  }
}

// Handles gravity and ball removal if they fall off screen
void updatePhysics() {
  float fallSpeed = 12; // All balls fall at this speed (pixels per frame)
  
  // Move each ball down at the same speed
  ball1.y = ball1.y + fallSpeed; // Move ball down
  if (ball1.y > 1000) {
    ball1.y = -1000; // If ball falls off screen, move it back to top for next cycle
    ball1.isActive = false; // Change ball to being inactive
  }
  
  // Repeat for each ball
  ball2.y = ball2.y + fallSpeed;
  if (ball2.y > 1000) {
    ball2.y = -1000;
    ball2.isActive = false;
  }
  
  ball3.y = ball3.y + fallSpeed;
  if (ball3.y > 1000) {
    ball3.y = -1000;
    ball3.isActive = false;
  }
  
  ball4.y = ball4.y + fallSpeed;
  if (ball4.y > 1000) {
    ball4.y = -1000;
    ball4.isActive = false;
  }
  
  ball5.y = ball5.y + fallSpeed;
  if (ball5.y > 1000) {
    ball5.y = -1000;
    ball5.isActive = false;
  }
  
  checkIfBallsHitBasket(); // Check for collisions
  dropNewBall(); // Drop a new ball
}
