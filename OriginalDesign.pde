float x = 0.0;
int y = 0;
int w = 0;
int z = 0;
void setup() {
  size(800, 800);
  background(0);
  frameRate(60);
}
void draw() {
  noStroke();
  background(0);
  fill(w, y, z);
  textSize(32);
  text("Loading...", 327, 275);
  rect(0, 750, 55, 55);
  fill(w, y, z);
  windowInput(0, 0);
  fill(w, y, z);
  arc(400, 400, 200, 200, 0, x);
  x=x+.1;
  y++;
  if (y > 254) {
    w++;
    windowInput(0, 55);
    windowInput(55, 0);
    if (w > 254) {
      //System.out.println("test");
      fill(w, y, z);
      windowInput(55, 55);
      windowInput(0, 110);
      windowInput(110, 0);
      w = 255;
      y--;
      z++;
      if (z > 254){
      windowInput(55, 110);
      windowInput(0, 165);
      windowInput(110, 55);
      windowInput(165, 0);
      fill(0);
      rect(300, 250, 300, 300);
      fill(255);
      text("Complete!", 485, 200);
      
      }
    }
  }
  if (x > 6.3) {
    x=0;
  }
}
void squareWindow(int locX, int locY) {
  fill(w, y, z);
  rect(0 + locX, 750 - locY, 55, 55);
}
void window(int locX, int locY) {
  fill(0);
  rect(12 + locX, 762 - locY, 30, 30);
}
void windowInput(int locX, int locY){
  fill(w, y, z);
  squareWindow(locX, locY);
  fill(0);
  window(locX, locY);
  
  //hi guys
}
