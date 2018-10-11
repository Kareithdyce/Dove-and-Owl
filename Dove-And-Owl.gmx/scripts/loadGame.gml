///setStats(void)
if(file_exists(SAVEFILE)){
    ini_open(SAVEFILE);
    with(obj_player){
        x = ini_read_real("Location", "X", 0);
        y = ini_read_real("Location", "Y", 0);
        room = ini_read_real("Location", "Room", room0);
        currentBird = ini_read_real("Stats", "Form", 1);
    }
    ini_close();
}

