class enemyObjects extends GameObject{
  
  float sizeX, sizeY, sizeZ;
  float rotX, rotY, rotZ;
  PImage texture;
  PShape object;
  
  PVector chase; 
  int speed; 
  boolean evil;
  
  enemyObjects(float y) {
    super(random(-1100,1100),y,random(-1100,1100),1,1);
      sizeX = sizeY = sizeZ = 20;
      rotX = 180;
      rotY = 0;
      rotZ = 0;
      texture = zombieGreen;
      object = zombie;
      evil = true; 
      
      //loc.add(chase);
  }
  
  
   void show() {
  world.pushMatrix();
  world.translate(loc.x, loc.y, loc.z);
  object.setTexture(texture);
  world.scale(sizeX,sizeY,sizeZ);
  world.rotateX( radians(rotX) );
  world.rotateY( radians(rotY) );
  world.rotateZ( radians(rotZ) );
  world.shape(object);
  world.popMatrix();
  
  }
  
  void act() {
    if (evil == true) {
      float vx = eyex - loc.x;
      float vy = 0;
      float vz = eyez - loc.z;
      speed = 5;
      chase = new PVector(vx, vy, vz);
      chase.setMag(speed);
      loc.add(chase);
    }
    
  }
  
}
