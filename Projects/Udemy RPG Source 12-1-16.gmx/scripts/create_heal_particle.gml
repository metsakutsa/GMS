///create_heal_particle(sprite, blend, min_life, max_life)
/*
    This function creates the heal particle type.
*/

var sprite = argument0;
var blend = argument1;
var min_life = argument2;
var max_life = argument3;

// Create the particle type
var type = part_type_create();
part_type_alpha2(type, .75, 0);
part_type_sprite(type, sprite, false, true, true);
part_type_blend(type, blend);
part_type_size(type, 1, 1, 0, 0);
part_type_life(type, min_life, max_life);
part_type_orientation(type, 0, 0, 0, 0, 0);
part_type_gravity(type, .5, 90);
part_type_direction(type, 90, 90, 0, 0);
part_type_speed(type, 1, 3, 0, 0);

return type;
