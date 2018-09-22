///movement(void)
getInput();
move = key_left + key_right;
//Sets player direction as long as a button is pressed
//Owl form
if(move != 0 && currentBird == 1){
    sprite_index = spr_owl_walking;
    dirc = move;
} 
else if(currentBird == 1){
    sprite_index = spr_owl_idle;
}
//Dove Form
if(move != 0 && currentBird == 2){
    sprite_index = spr_dove_walking;
    dirc = move;
} 
else if(currentBird == 2){
    sprite_index = spr_dove_idle;
}
//Error Form
if(currentBird == 0) {
    object_set_visible(self,false)
}
//Applies the movement speed
hspd = move * movespeed;
//Jumping 
if (on_ground){
    number_of_jumps = jumps_max;
    is_jumping = false;
    vspd = 0;
    facing = dirc
}
if (key_jump_release && vspd < 0) {
    vspd = 0;
    
}
if (number_of_jumps > 0 && key_jump) {
    vspd = key_jump * -jumpspeed;
    number_of_jumps--;
    
}


//Applies Gravity
vspd += grav;
if(vspd > gravMax){
    vspd = gravMax;
}

horizontalCollision();
x+= hspd;

verticalCollision();
y+= vspd;

