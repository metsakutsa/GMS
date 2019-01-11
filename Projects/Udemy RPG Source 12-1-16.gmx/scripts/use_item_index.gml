///use_item_index(item_index)
/*
    This function allows the player to use an item. It takes an item index
    as an argument.
*/

var item_index = argument0;
with (o_player_stats) {
    // Find the item and make sure it exists
    var item = ds_list_find_value(items, item_index);
    if (item != undefined) {
        
        // Check for exit case
        if (item[? "battle"] && room != r_battle) {
            // If the item is battle only show a message and exit
            create_message_at_view_center("You cannot use this#item outside of battle.");
            with (other.parent) instance_destroy();
            with (other) instance_destroy();
            exit;
        }
        
        // Remove from the item
        item_number[| item_index]--;
        
        // If there are no more items remove them from the list
        if (item_number[| item_index] <= 0) {
            ds_list_delete(item_number, item_index);
            ds_list_delete(items, item_index);
        }
        
        // Use the item
        script_execute(asset_get_index(item[? "effect"]), item[? "arguments"]);
    }
}
