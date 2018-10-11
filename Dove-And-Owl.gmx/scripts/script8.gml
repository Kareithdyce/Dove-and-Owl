///setStats(void)
if(file_exists(EDITSTATE)){
    ini_open(EDITSTATE);
    with(obj_player){
        x = ini_read_real("Location", "X", 0);
        y = ini_read_real("Location", "Y", 0);
        room = ini_read_real("Location", "Room", room0);
        movespeed = ini_read_real("Stats","Movement Speed", 300);
        grav = ini_read_real("Stats", "Gravity", .3);
        gravMax = ini_read_real("Stats", "Gravity Max", 15);
        jumpspeed = ini_read_real("Stats", "Jumping Speed", 8);
        jumps_max = ini_read_real("Stats", "Max Jumps", 1);
        currentBird = ini_read_real("Stats", "Form", 1);
    }
    ini_close();
}

