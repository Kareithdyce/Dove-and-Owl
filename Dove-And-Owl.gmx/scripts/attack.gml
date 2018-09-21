///attack(spriteDirection)
spriteDirection = argument0
//This is how owl attacks
if(currentBird == 1){
    wingAttack = instance_create(x + (spriteDirection * 55), y,obj_blade);
    wingAttack.image_xscale = spriteDirection;
}
