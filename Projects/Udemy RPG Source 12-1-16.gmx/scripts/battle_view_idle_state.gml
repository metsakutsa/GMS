///battle_view_idle_state()
/*
    This state controls the battle view during
    moments when there isn't a focus on either the player or the enemy.
*/

target[? "x"] = target[? "base x"];
target[? "y"] = target[? "base y"];

// Approach the base battle view position
view_approach(target[? "x"], target[? "y"], 320, 180, .05, .1);
