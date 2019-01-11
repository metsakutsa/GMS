///battle_use_item_state()
/*
    This script is used as the battle player's item use state.
    In this state the player uses an item when their animation hits
    a specific frame. The item used depends on a variable called item_index
    that is set in the player by the item ui menu.
*/

// Enemies can't use items
if (object_index != o_player_battle_unit) {
    state = battle_wait_state;
    exit;
}

// Change sprites
change_sprites(s_battle_elizabeth_use_item, 0, .25);

if (animation_hit_frame(0)) {
    // Set the view state
    o_battle_view.target[? "x"] = xstart+64*image_xscale;
    o_battle_view.state = battle_view_focus_state;
}

// Use item
if (animation_hit_frame(5)) {
    use_item_index(item_index);
}

// Return to the idle state
if (animation_end()) {
    // Set both units to the wait state
    with (o_battle_unit) {
        state = battle_wait_state;
    }
    
    // Change the view state again
    o_battle_view.state = battle_view_idle_state;
}

