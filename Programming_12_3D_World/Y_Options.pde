void option() {
  pushMatrix();
  
  background(0,200,0);
  textAlign(CENTER);
  rectMode(CENTER);
  textSize(40);
  button(130,720,200,100,"INTRO");
  
  /*
  button(130,130,200,100,"SOUND");
  if(musicOn == true) {
  text("ON",700,140);
  }
  
  if(musicOn != true) {
   text("OFF",700,140);
  }
  */
  
    button(130,330,200,100,"ZOMBIE");
  if(glitchyZombie == true) {
  text("ON",700,340);
  }
  
  if(glitchyZombie != true) {
   text("OFF",700,340);
  }
  
  
  popMatrix();
}

void optionClicks() {
   if(buttonPressed(130,720,200,100) ){
     mode = INTRO;
   }
   
   /*
   if(buttonPressed(130,130,200,100) && musicOn == true ){
     musicOn = false;
   } else if (buttonPressed(130,130,200,100) && musicOn == false) {
     musicOn = true; 
   }
   */
   
   if(buttonPressed(130,330,200,100) && glitchyZombie == true) {
    glitchyZombie = false; 
   } else if (buttonPressed(130,330,200,100) && glitchyZombie == false) {
    glitchyZombie = true; 
   }
   
}
