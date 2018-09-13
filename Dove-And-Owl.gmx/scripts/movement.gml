///movement(void)
getInput();
move = key_left + key_right;
//Sets player direction as long as a button is pressed
if(move!= 0){
    dirc = move;
}
//Applies the movement speed
hspd = move * movespeed;
//Jumping 
if (on_ground){
    number_of_jumps = jumps_max;
    is_jumping = false;
    vspd = 0;
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

