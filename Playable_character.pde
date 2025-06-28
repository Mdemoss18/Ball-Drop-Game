/*
This file contains the class for the playable character (the ball basket).
The basket is able to move left and right by the user. 
*/

BallBasket objectTwo;

// Initialize the basket object
void setupObjectTwo() {
  objectTwo = new BallBasket();
}

// Class definition for the basket
class BallBasket {
  PShape woodenBasket;
  // Variables for horizontal position, speed, and boundaries
  float x;
  float speed;
  float leftBound;
  float rightBound;
  
  // Constructor to set initial values
  BallBasket() {
    woodenBasket = loadShape("tinker2.obj"); // Load 3D basket model
    x = width / 2;
    speed = 18;
    leftBound = 150;
    rightBound = width;
  }
  
  // Draw the basket to the screen
  void display() {
    pushMatrix();
    translate(x, 900, 0);
    rotateX(3 * PI / 2);
    rotateY(PI);
    scale(3.0);
    shape(woodenBasket, 0, 0);
    popMatrix();
  }
  
  // Move the basket to the left, but stay in bounds
  void moveLeft() {
    x = max(leftBound, x - speed);
  }
  
  // Move the basket to the right, but stay in bounds
  void moveRight() {
    x = min(rightBound, x + speed);
  }
}
