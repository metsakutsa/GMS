///battle_approach_state()
/*
    This script is used as the battle approach state.
    In this state the unit approaches the foe and completes
    one animation loop for the approach animation. Once the foe
    is reached the unit changes to the attack state.
*/

var targetx = xstart+BATTLE_SPACE*image_xscale;
var spd = min(28, 64/image_number);
battle_set_sprite(APPROACH, 0);

// Calculate the image speed
var frames = get_frames(targetx, xstart, spd);
image_speed = get_image_speed(frames, image_number);

// Set the view state
o_battle_view.target[? "x"] = targetx-32*image_xscale;
o_battle_view.state = battle_view_focus_state;

// Move to target
x = approach(x, targetx, spd);
if (x == targetx) {
    state = battle_attack_state;
}
