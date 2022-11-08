Particle bob [];
Odball becca;
void setup(){
  size(400,400);
  bob = new Particle [200];
  for(int m = 0; m< bob.length; m++){
    bob[m] = new Particle();
  }
  becca = new Odball();
}
void draw(){
  background(0);
  for(int z = 0; z<bob.length; z++){
    bob[z].move();
    bob[z].show();
  }
  becca.move();
  becca.show();
}
class Particle{
  int x;
  int y;
  int pretty;
  int speed;
  Particle(){
    x = (int)(Math.random()*401);
    y = 200;
    pretty = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    speed = (int)(Math.random()*20)-10;
  }
  void move(){
    fill(pretty);
    ellipse(x,y,20,20);
  }
  void show(){
    x = x +speed;
    y = y+speed;
  }
}
class Odball extends Particle{
  Odball(){
  pretty = color(255,255,255);
  x = 200;
  speed = 0;
  }
  void move(){
    fill(pretty);
    rect(x,y,20,20);
  }
}
