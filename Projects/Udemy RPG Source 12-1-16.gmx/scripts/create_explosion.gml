///create_explosion(x, y)
/*
    This function can be used to create an explosion
    at a location.
*/

var xx = argument0;
var yy = argument1;

// Create the explosion center
instance_create(xx, yy, o_explosion_center);

// Create the particle creators
repeat (10) {   
    // Create the invisible particle creator objects in an area around the explosion x and y
    instance_create(xx-16+random(32), yy-16+random(32), o_particle_creator);
}
