void texturedCube( float x, float y, float z, PImage texture, float size){
  world.pushMatrix();
  world.translate(x, y ,z);
  world.scale(size);
  //rotateX(rotx);
  //rotateY(roty);
   
 world.noStroke();
   
 world.beginShape(QUADS);
 world.texture(texture);
  
  //top
  //     x, y, z, tx, ty
  world.vertex(0, 0, 0, 0, 0);
  world.vertex(1, 0, 0, 1, 0);
  world.vertex(1, 0, 1, 1, 1);
  world.vertex(0, 0, 1, 0, 1);
  
  
  //bottom 
 world.vertex(0, 1, 0, 0, 0);
 world.vertex(1, 1, 0, 1, 0);
 world.vertex(1, 1, 1, 1, 1);
 world.vertex(0, 1, 1, 0, 1);
  
  
  //front
  world.vertex(0, 0, 1, 0, 0);
  world.vertex(1, 0, 1, 1, 0 );
  world.vertex(1, 1, 1, 1, 1);
  world.vertex(0, 1, 1, 0, 1);
  
  //back
  world.vertex(0, 0, 0, 0, 0);
  world.vertex(1, 0, 0, 1, 0 );
  world.vertex(1, 1, 0, 1, 1);
  world.vertex(0, 1, 0, 0, 1);
  
  //left
  world.vertex(0, 0, 0, 0, 0);
  world.vertex(0, 0, 1, 1, 0);
  world.vertex(0, 1, 1, 1, 1);
  world.vertex(0, 1, 0, 0, 1);
  
  //right
  world.vertex(1, 0, 0, 0, 0);
  world.vertex(1, 0, 1, 1, 0);
  world.vertex(1, 1, 1, 1, 1);
  world.vertex(1, 1, 0, 0, 1);
  
  world.endShape();
  
  world.popMatrix();
}

void texturedCube( float x, float y, float z, PImage top, PImage side, PImage bottom, float size){
  world.pushMatrix();
  world.translate(x, y ,z);
  world.scale(size);
  //rotateX(rotx);
  //rotateY(roty);
   
  world.noStroke();
   
  world.beginShape(QUADS);
  world.texture(top);
  
  //top
  //     x, y, z, tx, ty
  world.vertex(0, 0, 0, 0, 0);
  world.vertex(1, 0, 0, 1, 0);
  world.vertex(1, 0, 1, 1, 1);
  world.vertex(0, 0, 1, 0, 1);
  
  world.endShape();
  
  world.beginShape(QUADS);
  world.texture(bottom);
  
  //bottom 
  world.vertex(0, 1, 0, 0, 0);
  world.vertex(1, 1, 0, 1, 0);
  world.vertex(1, 1, 1, 1, 1);
  world.vertex(0, 1, 1, 0, 1);
  
  world.endShape();
  
  world.beginShape(QUADS);
  world.texture(side);
  
  //front
  world.vertex(0, 0, 1, 0, 0);
  world.vertex(1, 0, 1, 1, 0 );
  world.vertex(1, 1, 1, 1, 1);
  world.vertex(0, 1, 1, 0, 1);
  
  //back
  world.vertex(0, 0, 0, 0, 0);
  world.vertex(1, 0, 0, 1, 0 );
  world.vertex(1, 1, 0, 1, 1);
  world.vertex(0, 1, 0, 0, 1);
  
  //left
  world.vertex(0, 0, 0, 0, 0);
  world.vertex(0, 0, 1, 1, 0);
  world.vertex(0, 1, 1, 1, 1);
  world.vertex(0, 1, 0, 0, 1);
  
  //right
  world.vertex(1, 0, 0, 0, 0);
  world.vertex(1, 0, 1, 1, 0);
  world.vertex(1, 1, 1, 1, 1);
  world.vertex(1, 1, 0, 0, 1);
  
  world.endShape();
  
  world.popMatrix();
}



void texturedCube( float x, float y, float z, float size, float tx, float ty){ //this function is for the gifs!
  world.pushMatrix();
  world.translate(x, y ,z);
  world.scale(size);
  //rotateX(rotx);
  //rotateY(roty);
   
 world.noStroke();

 world.beginShape(QUADS);
 world.textureMode(IMAGE);
 world.texture(gif[frame]);
 
  //top
  //     x, y, z, tx, ty
  //image is 398 by 498
  world.vertex(0, 0, 0, 0, 0);
  world.vertex(1, 0, 0, tx, 0);
  world.vertex(1, 0, 1, tx, ty);
  world.vertex(0, 0, 1, 0, ty);
  
  
  //bottom 
 world.vertex(0, 1, 0, 0, 0);
 world.vertex(1, 1, 0, tx, 0);
 world.vertex(1, 1, 1, tx, ty);
 world.vertex(0, 1, 1, 0, ty);
  
  
  //front
  world.vertex(0, 0, 1, 0, 0);
  world.vertex(1, 0, 1, tx, 0 );
  world.vertex(1, 1, 1, tx, ty);
  world.vertex(0, 1, 1, 0, ty);
  
  //back
  world.vertex(0, 0, 0, 0, 0);
  world.vertex(1, 0, 0, tx, 0 );
  world.vertex(1, 1, 0, tx, ty);
  world.vertex(0, 1, 0, 0, ty);
  
  //left
  world.vertex(0, 0, 0, 0, 0);
  world.vertex(0, 0, 1, tx, 0);
  world.vertex(0, 1, 1, tx, ty);
  world.vertex(0, 1, 0, 0, ty);
  
  //right
  world.vertex(1, 0, 0, 0, 0);
  world.vertex(1, 0, 1, tx, 0);
  world.vertex(1, 1, 1, tx, ty);
  world.vertex(1, 1, 0, 0, ty);
  
  world.endShape();
  
  world.popMatrix();
}
