//your variable declarations here
Star [] david;
Spaceship bob;
ArrayList <Asteroid> benjamin = new ArrayList <Asteroid>();
public void setup() 
{
  size(500,500);
  bob = new Spaceship();
  david = new Star [500];  
    for(int i =0; i < david.length; i++) {
    david[i] = new Star();
  }
     for(int i =0; i < david.length; i++) {
    david[i] = new Star();
  }
  for(int i =0; i < 10; i ++ ) {
   benjamin.add(new Asteroid());
   benjamin.get(i).setX((int)(Math.random()*500));
   benjamin.get(i).setY((int)(Math.random()*500));
  }
  
}
public void draw() 
{
  background(0);
   noStroke();
    for(int i =0; i < david.length; i++) {
     
    david[i].show();
  }
  
  for(int i =0;  i< benjamin.size(); i++) {
    benjamin.get(i).show();
    benjamin.get(i).move();
    
  }
   bob.show();
    bob.move();
    
   float distance = 0;
    
    for(int i =0; i < benjamin.size(); i++ ) {
    distance = dist((float)bob.getX(),(float)bob.getY(),(float)benjamin.get(i).getX(),(float)benjamin.get(i).getY());
   
    if (distance <= 20) {
      benjamin.remove(i);
      i--;
    }
    
    }
}


public void keyPressed() {
 if (key == 'w') {
  bob.accelerate(.1); 

 }
 
 if(key == 's') {
  bob.accelerate(-.1); 
 }
 
  if(key == 'd') {
  bob.turn(10); 
 }
 
 if(key == 'a') {
  bob.turn(-10); 
 }

}


public void keyReleased() {
   if (key == 'w') {
   bob.setYSpeed(0);
   bob.setXSpeed(0);
 }
 
 if(key == 's') {
   bob.setYSpeed(0);
   bob.setXSpeed(0);
 }
 
 if (key == 'h') {
   int bomba = (int)(Math.random()*500);
   int bomb = (int)(Math.random()*500);
   int wilbur = (int)(Math.random()*360);
   bob.setX(bomba);
   bob.setY(bomb);
   bob.setYSpeed(0);
   bob.setXSpeed(0);
   bob.setDirect((double)wilbur);
 }
}
