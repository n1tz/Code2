PVector location;
PVector velocity;
PVector gravity;

float radius;
float inertia;
float friction;

void setup(){
size (500,500);
location = new PVector(100,100);
velocity = new PVector(2,1);
gravity = new PVector(0,0.3);
radius = 25;
friction = 0.8;
inertia = 0.995;
}

void draw(){
location.add(velocity);
velocity.add(gravity);
velocity.x = velocity.x * inertia;
velocity.y = velocity.y * inertia;

if((location.x > width-radius ) || (location.x < radius)){
  if (location.x > width/2){
    location.x =location.x -3;
  } else {location.x = location.x +3;}
  velocity.x = velocity.x * -1 * friction;

}

if(location.y > height-radius){
  velocity.y = velocity.y *friction * -1 ;
  location.y = height-radius;

}

if(mousePressed == true && sqrt(sq(location.x - mouseX) + sq(location.y - mouseY)) < 25){
  location.x = mouseX;
  location.y = mouseY;
  velocity.x = mouseX - pmouseX;
  velocity.y = mouseY - pmouseY;
  
}
background( 0);
ellipse(location.x,location.y,radius*2,radius*2);

}
