PVector location;
PVector velocity;
PVector gravity;

float friction;

void setup(){
size (500,500);
location = new PVector(100,100);
velocity = new PVector(2,1);
gravity = new PVector(0,0.3);
friction = 0.9;
}

void draw(){
location.add(velocity);
velocity.add(gravity);

if((location.x > width ) || (location.x < 0)){
  location.x = location.x * 0.99;
  velocity.x = velocity.x * -1 * friction;

}

if(location.y > height){
  velocity.y = velocity.y * -1 *friction;
  location.y = height;

}

if(mousePressed == true && sqrt(sq(location.x - mouseX) + sq(location.y - mouseY)) < 25){
  location.x = mouseX;
  location.y = mouseY;
  velocity.x = mouseX - pmouseX;
  velocity.y = mouseY - pmouseY;
  
}
background( 0);
ellipse(location.x,location.y,50,50);

}
