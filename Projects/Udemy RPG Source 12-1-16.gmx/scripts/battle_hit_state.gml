///battle_hit_state()
/*
    This script is used as the battle player's hit state.
    In this state the player takes knockback. The knockback animation
    is handled using a sin wave and an input variable based on the player's
    position in the current animation.
*/
battle_set_sprite(HIT, 0);

// Move the player based on the position in the animation
var input = (image_index/image_number)*pi;
x = xstart-sin(input)*32*image_xscale;

// Check for death
if (x-xstart > 24 && stats_object.stats[? "health"] <= 0) {
    state = battle_death_state;
}

// Return to the idle state
if (animation_end()) {
    state = battle_wait_state;
    x = xstart;
}

