///get_image_speed(frames, image_number)
/*
    This function takes a number of in game frames and
    an image frame number (from a sprite) and returns
    an image_speed that can be used to complete the
    sprite animation in that amount of frames.
*/

var frames = argument0;
var number = argument1;

return (1/(frames/number));
