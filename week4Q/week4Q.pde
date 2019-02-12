color c1 = color(255,0,0);
color c2 = color(0,255,0);
color c3 = color(0,0,255);

Circle circle1;

void setup(){
size(500,600);
circle1 = new Circle();
}

void draw(){
background(100,0,130);
circle1.display();
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
