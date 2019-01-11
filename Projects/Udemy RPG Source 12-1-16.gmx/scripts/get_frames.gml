///get_frames(x1, x2, speed);
/*
    Get the amount of in game frames required
    to complete a single animation while the sprite
    moves from point x1 to point x2 with a speed of spd.
*/

var x1 = argument0;
var x2 = argument1;
var spd = argument2;

// Do the math
var dis = abs(x1-x2);
return (dis/spd);
