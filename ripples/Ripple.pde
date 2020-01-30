class Ripple {
  
  //instance variables 
  float x, y, speed, size, a;
  
  //constructor
  Ripple() {
    x= random(0,width);
    y= random(0,height);
    size = random (0,100);
    speed = 2;
  }
  
  //behavior functions
  void act() {
    size = size + speed; //grow
    if (size > 100) {
      x = random (0,width);
      y = random (0, height);
      size = 0;
    }
  }


void show() {
  a = map(size, 0, 100, 255,0);
  stroke(255,a);
  ellipse(x,y,size,size/2);
}
}
