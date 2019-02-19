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
   
   if ( overRect(x, y, w, h) && dragged == false) {
    fill(c1);
    hover = true;
  }else if(dragRect(x, y, w, h)){
  fill(c3);
  dragged = true;
  }else {
    fill(c2);
    hover = false;
  }
 rect(x,y,w,h);
 }
  
}
}
