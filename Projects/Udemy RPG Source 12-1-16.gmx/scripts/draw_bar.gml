///draw_bar(x, y, sprite, health, maxhealth)
/*
    Uses a location and health and max health variables to
    calculate and draw a health bar.
*/

var xx = argument0;
var yy = argument1;
var sprite = argument2;
var hth = argument3;
var maxhth = argument4;
var index = 0;

// Only calculate index if hth isn't 0
if (hth >= 0) {
    index = (hth/maxhth)*(sprite_get_number(sprite)-1);
}

// Draw the health bar
draw_sprite(sprite, index, xx, yy);
