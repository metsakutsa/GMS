///battle_return_state()
/*
    This script is used as the battle player's return state.
    In this state the player returns back to their starting position
    and completes one animation loop in their return animation.
*/

var targetx = xstart;
var spd = 12;
battle_set_sprite(RETURN, 0);

// Calculate the image speed
var frames = get_frames(targetx, xstart+BATTLE_SPACE*image_xscale, spd);
image_speed = get_image_speed(frames, image_number);

x = approach(x, targetx, spd);

// Move to target
if (x == targetx) {
    state = battle_wait_state;
}
