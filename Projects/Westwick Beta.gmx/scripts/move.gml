/// move(hspd,vspd)

var hspd = argument0;
var vspd = argument1;

// Horizontal movement

if (!place_meeting(x+hspd, y, o_solid)){
    x += hspd;
}

// Vertical movement
if (!place_meeting(x, y+vspd, o_solid)){
    y += vspd;
}

// Enable movement in only one direction
var dir = point_direction(0,0,hspd,vspd);
moved = x != xprevious or y != yprevious;

// Update sprite
if (!moved) {
    image_speed = 0;
    image_index = 0;
} else {
    image_speed = 0.2;
    facing = get_facing(dir);
}

// Return true if movement is possible
return moved;
