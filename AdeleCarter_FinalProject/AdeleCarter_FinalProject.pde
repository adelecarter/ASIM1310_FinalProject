// Adele Carter
// Snake (Game)

Snake mySnake;

void setup() {
  size(500,500);
  mySnake = new Snake();
}

void draw() {
  mySnake.drawSnake();
  mySnake.moveSnake();
}