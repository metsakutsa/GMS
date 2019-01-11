///move_intended_direction(hspeed, vspeed, distance)
/*
    This function takes an hpsd and a vspd and
    attempts to calculate and move towards and intended
    direction if there is a collision.
*/

var hspd = argument0;
var vspd = argument1;
var dis = argument2;

// Check for a wall
var wall = instance_place(x+hspd, y+vspd, o_solid);

// Make sure there is a wall
if (wall/* && !object_is_ancestor(wall.object_index, o_speaker)*/) {
    // Switch through the facing direction
    switch (facing) {
        // Up and down cases
        case UP:
        case DOWN:
            if (hspd != 0) exit; // No need to slide if we already have hspd
            for (var i=0; i<=dis; i+=spd) {
                if (!place_meeting(x+i, y+vspd, o_solid)) {
                    faceless_move(spd, 0);
                    break;
                }
                
                if (!place_meeting(x-i, y+vspd, o_solid)) {
                    faceless_move(-spd, 0);
                    break;
                }
            }

            break;
            
        // Right and left cases
        case RIGHT:
        case LEFT:
            if (vspd != 0) exit; // No need to slide if we already have vspd
            for (var i=0; i<=dis; i+=spd) {
                if (!place_meeting(x+hspd, y-i, o_solid)) {
                    faceless_move(0, -spd);
                    break;
                }
                
                if (!place_meeting(x+hspd, y+i, o_solid)) {
                    faceless_move(0, spd);
                    break;
                }
            }
            break;
    }
}

