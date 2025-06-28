/* 
Interactive items for player to hit/collect. 
These items will be worth different points 
for the final score
*/

// Declare 5 different ball objects
Ball ball1, ball2, ball3, ball4, ball5;

// Define a class representing a ball object
class Ball {
  float x, y, z; // Position
  float size;    // Radius of sphere
  color ballColor; // Color of the ball
  boolean isActive; // Track if ball is active (not collected)
  
  // Constructor to intialize a ball object
  Ball(float xPos, float yPos, float zPos, float sz, color col) {
    x = xPos;
    y = yPos;
    z = zPos;
    size = sz;
    ballColor = col;
    isActive = false; // All balls start inactive and must be activated before dropped
  }
  
  // Display ball on screen if it is active
  void display() {
    if (!isActive) return; // Skip rendering if not active
    pushMatrix();
    translate(x, y, z);
    fill(ballColor);
    noStroke();
    sphere(size);
    popMatrix();
  }
}

// Initialize five balls with unique sizes, positions, and colors
// All balls start above the screen (y = -1000)
void setupInteractiveItems() {
  ball1 = new Ball(200, -1000, 0, 50, color(255, 0, 0));    // Red, largest
  ball2 = new Ball(400, -1000, 0, 30, color(0, 255, 0));    // Green, medium (third largest)
  ball3 = new Ball(600, -1000, 0, 20, color(0, 0, 255));    // Blue, smallest
  ball4 = new Ball(800, -1000, 0, 40, color(255, 255, 0));  // Yellow, medium-large (second largest)
  ball5 = new Ball(1000, -1000, 0, 25, color(255, 0, 255)); // Magenta, small-medium (fourth largest)
}
