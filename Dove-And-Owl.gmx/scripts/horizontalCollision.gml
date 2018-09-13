///horizontalCollision(void)
//Incase we want to use walls with special properties
var wall = instance_place(x+hspd,y, obj_walls);
if(wall != noone){
    //Checked again incase we want walls with special properties
    if(place_meeting(x+hspd, y, obj_walls)){
        //Used for going up slopes
        raise = 0;
        while(place_meeting(x+hspd,y-raise,obj_walls) && raise <= abs(hspd)){
            raise++;
        }
        if(place_meeting(x+hspd, y-raise, obj_walls)){
            while (!place_meeting(x + sign(hspd), y, obj_walls)) {
                x += sign(hspd);
            }
        hspd = 0;
        return true;
        }
            else {
          y-= raise;
        }
    }
}
//Used for going down slopes
lower = 0;
while(!place_meeting(x+hspd,y+lower+1,obj_walls) && lower <= abs(hspd)){
    lower++;
}
if(place_meeting(x+hspd, y+lower+1, obj_walls)){
    y+= lower;
}
return false;


