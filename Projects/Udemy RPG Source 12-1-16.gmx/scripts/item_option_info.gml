///item_option_info()
/*
    This function is called when the item option "info" is selected.
*/
var xx = x;
var yy = y;

if (instance_exists(parent)) {
    // Get the parent
    with (parent) {
        // Show the item info
        with (o_player_stats) {
            // Find the item and make sure it exists
            var item = ds_list_find_value(items, other.index);
            if (item != undefined) {
                var message = create_message(xx, yy, item[? "info"]);
            } else {
                exit;
            }
        }
    }
}

// Hide the parent
visible = false;
child = message;
child.parent = id;
enabled = false;

