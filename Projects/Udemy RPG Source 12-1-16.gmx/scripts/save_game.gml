///save_game()
/*
    This function allows the player to save the game.
*/

// Break cases
if (!instance_exists(o_player_stats)) exit;
if (!instance_exists(o_elizabeth)) exit;

// Create the map for the data
var save_data = ds_map_create();

// Save the player's position
with (o_elizabeth) {
    save_data[? "x"] = x;
    save_data[? "y"] = y;
    save_data[? "room"] = room;
}

// Save the player's stats
with (o_player_stats) {
    save_data[? "level"] = level;
    
    // Save the items
    var save_items = ds_list_create();
    ds_list_copy(save_items, items);
    ds_map_add_list(save_data, "items", save_items);
    
    // Save number of items
    var save_item_number = ds_list_create();
    ds_list_copy(save_item_number, item_number);
    ds_map_add_list(save_data, "item number", save_item_number);

    // TODO: Save cutscenes played
}

// Create the save string
var save_string = json_encode(save_data);

// Destroy the data structures

ds_map_destroy(save_data);

// Encode the save file
save_string = base64_encode(save_string);

// Create the save file and write to it
var save_file = file_text_open_write(working_directory+"save.txt");
file_text_write_string(save_file, save_string);
file_text_close(save_file);
show_debug_message("Game saved");
