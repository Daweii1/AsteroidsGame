class Asteroid extends Floater
{
   private double rotSpeed = (int)(Math.random()*10)-5; //randomly + or -
   
    public Asteroid() {
        corners = 6;
        xCorners = new int[corners];
        yCorners = new int[corners];
        xCorners[0] = -22;
        yCorners[0] = -16;
        xCorners[1] = 14;
        yCorners[1] = -16;
        xCorners[2] = 26;
        yCorners[2] = 0;
        xCorners[3] = 12;
        yCorners[3] = 20;
        xCorners[4] = -22;
        yCorners[4] = 16;
        xCorners[5] = -10;
        yCorners[5] = 0;
        myXspeed = (int)(Math.random()*6);
        myYspeed = (int)(Math.random()*6);
             myColor = color(128);

        // other code not shown
    }
    
     public void move(){
    turn(rotSpeed);
    super.move();  
  }
  
     public void setX(int bomb) {
     myCenterX = bomb;
   }
   
   public void setY(int bomb) {
     myCenterY = bomb;
   }
   
      public void setXSpeed(int bomb) {
     myYspeed = bomb;
   }
   
   public void setYSpeed(int bomb) {
     myXspeed = bomb;
   }
   
   public void setDirect(double bomb) {
     myPointDirection = bomb;
   }
   
   public void setRot(double bomb) {
      rotSpeed = bomb; 
   }
   
   public double getX() {
    return myCenterX; 
   }
   
   public double getY() {
    return myCenterY; 
   }
}
   
    
    
 
   
