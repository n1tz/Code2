class Circle{
int x;
int y;
int size;
int cycle;
boolean hover;
color c;

  
  Circle(){
  x=(int)random(width);
  y=(int)random(height);
  size=(int)random(10,100);
  cycle=0;
  hover= false;
  c = c1;
}
void display(){

  if ( overCircle(x, y, size) ) {
    stroke(3);
    hover=true;
    
  } else {stroke(0); hover=false;}
  
  if(cycle==0){c=c1;}
  if(cycle==1){c=c2;}
  if(cycle==2){c=c3;}
  
  fill(c);
  ellipse(x,y,size,size);

}
void mousePressed(){
if(hover==true){
  cycle++;
}
}



}
