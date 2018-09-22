///getStats(void)
if(file_exists(EDITSTATE)) file_delete((EDITSTATE));
ini_open(EDITSTATE);
with(obj_player){
    //Store location
    ini_write_real("Location", "Room", room);
    ini_write_real("Location", "X", x);
    ini_write_real("Location", "Y", y);

    //Store Stats
    ini_write_real("Stats","Movement Speed", movespeed);
    ini_write_real("Stats", "Gravity", grav);
    ini_write_real("Stats", "Gravity Max", gravMax);
    ini_write_real("Stats", "Jumping Speed", jumpspeed);
    ini_write_real("Stats", "Max Jumps", jumps_max);
    ini_write_real("Stats", "Form", currentBird);
    
          
}
ini_close();

