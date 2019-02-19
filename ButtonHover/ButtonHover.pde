int shape;
int maxRockets = 10;
int b2 = 50;

int b3x;
int b3y;

boolean rectOver = false;
boolean circleOver = false;
boolean fireworks = false;
boolean dragged = false;

color c1 = 100;
color c2 = 255;
color c3 = color(255,0,0);

boolean b2act = false;


Rocket[] rockets = new Rocket[maxRockets];

button button1;
button button2;
button button3;

void setup(){
size(600,600);
stroke(0);

b3x = width/2;
b3y = height/2;


button1 = new button();
button2 = new button();
button3 = new button();

  for (int i = 0; i < rockets.length; i++){
    rockets[i] = new Rocket();
  }
}

void draw(){
  background(100,0,200);
button1.display(width/3,height/2,100,100,true);
button2.display(width*2/3-50,height/2-50,b2,b2,false);

if(b2act == true){
button3.display(b3x,b3y,30,30,true);
}

if (button3.hover == true) {
    if (mousePressed) {
      b3x = mouseX;
      b3y = mouseY;
    }
  }


for (int i = 0; i < rockets.length; i++){
  if(fireworks == true){
    rockets[i].shoot();
    rockets[i].display();
  }
  }


}

void mousePressed(){
if (button1.hover == true){
b2act = true;
b2 = 100;
}
if (button3.hover == true && dragged == true ){
fireworks = true;
}

}



boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
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

boolean dragRect(int x, int y, int width, int height)  {
  if (b3x >= x && b3x <= x+width && 
      b3y >= y && b3y <= y+height) {
    return true;
  } else {
    return false;
  }
}
