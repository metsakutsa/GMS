///calculate_health(level, health)
/*
    This script contains the formula for calculating character health.
*/
var level = argument0;
var hth = argument1;

// Calculate and return the new health value using the level
return round((hth*3)+(3*level));
