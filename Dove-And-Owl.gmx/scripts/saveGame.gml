///getStats(void)
if(file_exists(SAVEFILE)) file_delete((SAVEFILE));
ini_open(SAVEFILE);
with(obj_player){
    //Store location
    ini_write_real("Location", "Room", room);
    ini_write_real("Location", "X", x);
    ini_write_real("Location", "Y", y);

    //Store Stats
    ini_write_real("Stats", "Form", currentBird);
    
          
}
ini_close();

