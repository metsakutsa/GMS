///drop_item_index(item_index, amount)
/*
    This function allows the player to drop an item. The item_index argument is the
    index of the item to be dropped.
*/

var item_index = argument0;
var amount = argument1

// Make sure the player stats object exists
if (instance_exists(o_player_stats)) {
    with (o_player_stats) {
        // Find the item
        if (ds_list_find_value(items, item_index) != undefined) {
            item_number[| item_index] -= amount;
            // Remove the item
            if (item_number[| item_index] <= 0) {
                ds_list_delete(item_number, item_index);
                ds_list_delete(items, item_index);
            }
        }
    }
}
