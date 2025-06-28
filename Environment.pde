/* 
Environment classes for game elements. This file will 
hold information for background images (the space background) 
and prop objects (the cannon)
*/

// Declare global background object
SpaceBackground backgroundOne;

// Initialize background object
void setupBackgroundOne() {
  backgroundOne = new SpaceBackground();
}


// Class for displaying the background
class SpaceBackground {
  PImage backgroundStars;
  
  // Constructor: load the background image
  SpaceBackground() {
    backgroundStars = loadImage("Galaxy background.png");
  }
  
  // Display method to draw the background
  void display() {
    background(0); // Clear canvas
    pushMatrix();
    translate(0, 0, -200); // Push background behind 3D models
    imageMode(CENTER); // Use CENTER mode to position from the image's center
    // Enlarge the image to fit the screen
    float zoomFactor = 1.5;
    float scaledWidth = width * zoomFactor;
    float scaledHeight = height * zoomFactor;
    // Draw background image centered on screen
    image(backgroundStars, width/2, height/2, scaledWidth, scaledHeight);
    popMatrix();
  }
}

// Declare global ball-dropper object (cannon)
BallDropper objectOne;

// Initialize ball dropper object
void setupObjectOne() {
  objectOne = new BallDropper();
}


// Class for displaying the cannon
class BallDropper {
  PShape model;
  
  // Constructor: load 3D object file
  BallDropper() {
    model = loadShape("tinker1.obj");
  }
  
  // Display method to draw the 3D model to screen
  void display() {
    fill(255);
    lights(); // Lighting effects for 3D shading
    pushMatrix();
    translate(width/2, 50, 0);
    // Rotate the model so it faces downward
    rotateX(PI/2);
    rotateY(PI);
    scale(1.15);  // Slightly enlarge the model
    shape(model, 0, 0);
    popMatrix();
  }
}
