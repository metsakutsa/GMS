///action_option_info()
/*
    This function is called when the action option "info" is selected.
*/
var xx = x;
var yy = y;

if (instance_exists(parent)) {
    // Get the parent
    with (parent) {
        // Show the item info
        with (o_player_stats) {
            // Find the action and make sure it exists
            var action = ds_list_find_value(actions, other.index);
            if (action != undefined) {
                var message = create_message(xx, yy, action[? "info"]);
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
