color c1 = color(255,0,0);
color c2 = color(0,255,0);
color c3 = color(0,0,255);

int maxCircles = 40;

Circle circle1;

Circle[] circles = new Circle[maxCircles];

void setup(){
size(500,600);
circle1 = new Circle();

for (int i = 0; i < circles.length; i++){
    circles[i] = new Circle();
    
  }
}

void draw(){
background(100,0,130);
for (int i = 0; i < circles.length; i++){
    circles[i].display();
    circles[i].click();
  }

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
