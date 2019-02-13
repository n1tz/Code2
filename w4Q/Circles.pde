class Circle{
int x;
int y;
int size;
int cycle;
boolean hover;
color c;

int minsize;
int maxsize;

  
  Circle(){
  minsize = 25;
  maxsize = 80;
  x=(int)random(width);
  y=(int)random(height);
  size=(int)random(minsize,maxsize);
  cycle=0;
  hover= false;
  c = c1;
}
void display(){

  if ( overCircle(x, y, size) ) {
    strokeWeight(3);
    hover=true;
    
  } else {strokeWeight(0); hover=false;}
  
  if(cycle==0){c=c1;}
  if(cycle==1){c=c2;}
  if(cycle==2){c=c3;}
  
  fill(c);
  ellipse(x,y,size,size);

}
void click(){
if(hover==true && mousePressed){
  
  cycle++;
  delay(100);
  
}
}

}
