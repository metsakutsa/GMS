///item_option_use()
/*
    This function is called when the item option "use" is selected.
*/

if (instance_exists(parent)) {
    // Get the parent
    with (parent) {
        // Make sure there are items
        if (instance_exists(o_player_battle_unit)) {
            // Use the item
            o_player_battle_unit.state = battle_use_item_state;
            o_player_battle_unit.item_index = index;
            instance_destroy();
        } else {
            // Use the item
            use_item_index(index);
            
            // Destroy the menu
            if (instance_exists(o_menu_ui)) {
                with (o_menu_ui) instance_destroy();
            }
        }
    }
}
