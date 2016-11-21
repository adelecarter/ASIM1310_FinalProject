class Snake { 
  float x = 20;
  float y = 20;
  float w = 20;
  float h = 20;
  float r = random(255);
  float g = random(255);
  float b = random(255);
  float xSpeed;
  float ySpeed;

void drawSnake() {
  background(255);
  rect(x,y,w,h);
  fill(r,g,b);
  xSpeed = 2;
  ySpeed = 2;
  }
  
void moveSnake() {
    x = x + xSpeed; // rectangle moves by two pixels each draw cycle
    y = y + ySpeed; 
    if (rightCollision()) { 
    xSpeed = -xSpeed; // multiply by negative 1, causes rectangle move in opposite direction (negative because moving to the left is negative)
  }
  
  if (leftCollision()) {
    xSpeed = -xSpeed;
  }
  
  if (bottomCollision()){
  ySpeed = -ySpeed; 
 }
 
 if (topCollision()){
   ySpeed = -ySpeed;
 }
 
}

boolean rightCollision() {
  boolean hasHit = x + (w/2) >= width; // if it's true, we'll hit the right side of screen; if false, we won't
  return  hasHit;
}

boolean leftCollision() { // if it's true, we'll hit the left side of the screen
  boolean hasHit = -x + (w/2) >= 0;
  return hasHit;
}

boolean bottomCollision() { // if it's true, we'll hit the bottom of the screen
 boolean hasHit = y + (h/2) >= height; 
 return hasHit;
}

boolean topCollision() { // if it's true, we'll hit the top of the screen
 boolean hasHit = -y + (h/2) >= 0;
 return hasHit;
  }
} 