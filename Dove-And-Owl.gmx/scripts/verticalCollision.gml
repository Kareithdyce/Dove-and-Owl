///verticalCollision(void)
//Incase of special walls
var wall = instance_place(x, y + vspd, obj_walls);
if(wall != noone){
    if(place_meeting(x, y + vspd, obj_walls)){
        while (!place_meeting(x, y + sign(vspd), obj_walls)) {
            y += sign(vspd);
        }
        on_ground = vspd > 0;
        vspd = 0
        return true;
    }
}
on_ground = false;
return false;

