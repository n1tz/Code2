int shape;
int maxDrops = 100;
int b2 = 0;

boolean rectOver = false;
boolean circleOver = false;
boolean raining = false;

color c1 = 0;
color c2 = 255;

boolean b2act = false;


Drop[] drops = new Drop[maxDrops];

button button1;
button button2;

void setup(){
size(600,600);
stroke(0);
button1 = new button();
button2 = new button();

  for (int i = 0; i < drops.length; i++){
    drops[i] = new Drop();
  }
}

void draw(){
button1.display(width/3,height/2,100,100,true);
button2.display(width*2/3-50,height/2-50,b2,b2,false);



for (int i = 0; i < drops.length; i++){
  if(raining == true){
    drops[i].fall();
    drops[i].display();
  }
  }


}

void mousePressed(){
if (button1.hover == true){
b2act = true;
b2 = 100;
}
if (button2.hover == true && b2act == true){
raining = true;
}

}

class button{
  boolean hover = false;

void display(int x, int y, int w, int h, boolean circlebutton){
   
   
 
 if (circlebutton == true){
 if ( overCircle(x, y, w) ) {
    fill(c1);
    hover = true;
    
  }else {
    fill(c2);
    hover = false;
  }
   
   ellipse(x,y,w,h);
 } else if (circlebutton == false){
   
   if ( overRect(x, y, w, h) ) {
    fill(c1);
    hover = true;
  }else {
    fill(c2);
    hover = false;
  }
 rect(x,y,w,h);
 }
  
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

class Drop{
  
  float x;
  float y;
  float speed;
  float maxSpeed = 10;
  float minSpeed = 5;
  
  Drop(){
  x = random(width);
  y = height; 
  speed = random(minSpeed,maxSpeed);
  }
  
  void fall(){
  y = y - speed;
  
  if(y < 0){
  y = height;

  speed = random(minSpeed,maxSpeed);
  }
  }
  
  void display(){
  fill (255,0,255);
  ellipse(x,y,10,10);
  
  }

}
