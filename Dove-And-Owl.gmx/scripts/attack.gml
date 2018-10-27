///attack(spriteDirection)
spriteDirection = argument0
//This is how owl attacks
if(currentBird == 1){
    wingAttack = instance_create(x + (spriteDirection * 55), y,obj_blade);
    wingAttack.image_xscale = spriteDirection;
}
//This is how dove attacks
if(currentBird == 2){
      wingAttack = instance_create(x , y,obj_feathers);
      wingAttack.spriteDirection = spriteDirection;
}
