///draw_nine_slice(sprite_index, x1, y1, x2, y2)
/*
    This script allows you to create a nine-slice using a sprite. The
    width of the sprite must be divisible by 2. This method stretches
    the middle image so make sure it doesn't have fancy designs.
*/

var sprite = argument0;
var x1 = argument1;
var y1 = argument2;
var x2 = argument3;
var y2 = argument4;
var slice_width = sprite_get_width(sprite)/3;
var slice_height = sprite_get_height(sprite)/3;
var width = x2-x1;
var height = y2-y1;

// Top
draw_sprite_part_ext(sprite, 0, 0, 0, slice_width, slice_height, x1, y1, 1, 1, c_white, 1);
draw_sprite_part_ext(sprite, 0, slice_width, 0, slice_width, slice_height, x1+slice_width, y1, (width-slice_width*2)/slice_width, 1, c_white, 1);
draw_sprite_part_ext(sprite, 0, slice_width*2, 0, slice_width, slice_height, x2-slice_width, y1, 1, 1, c_white, 1);

// Middle
draw_sprite_part_ext(sprite, 0, 0, slice_width, slice_width, slice_height, x1, y1+slice_height, 1, (height-slice_height*2)/slice_height, c_white, 1);
draw_sprite_part_ext(sprite, 0, slice_width, slice_width, slice_width, slice_height, x1+slice_width, y1+slice_height, (width-slice_width*2)/slice_width, (height-slice_height*2)/slice_height, c_white, 1);
draw_sprite_part_ext(sprite, 0, slice_width*2, slice_width, slice_width, slice_height, x2-slice_width, y1+slice_height, 1, (height-slice_height*2)/slice_height, c_white, 1);

// Bottom
draw_sprite_part_ext(sprite, 0, 0, slice_height*2, slice_width, slice_height*2, x1, y1+height-slice_height, 1, 1, c_white, 1);
draw_sprite_part_ext(sprite, 0, slice_width, slice_height*2, slice_width, slice_height, x1+slice_width, y1+height-slice_height, (width-slice_width*2)/slice_width, 1, c_white, 1);
draw_sprite_part_ext(sprite, 0, slice_width*2, slice_height*2, slice_width, slice_height, x2-slice_width, y2-slice_height, 1, 1, c_white, 1);
