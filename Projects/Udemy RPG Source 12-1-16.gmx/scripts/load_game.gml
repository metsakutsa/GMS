///load_game()
/*
    This function allows the player to load a previously saved game.
*/

// Break cases
if (!instance_exists(o_player_stats)) exit;
if (!instance_exists(o_elizabeth)) exit;

// Open the save file
var save_file = file_text_open_read(working_directory+"save.txt");

// Make sure there is a save
if (save_file) {
    // Get the save string
    var save_string = file_text_read_string(save_file);
    
    // Close the file
    file_text_close(save_file);
    
    // Decode the string
    save_string = base64_decode(save_string);
    
    // Create the data structure
    var save_data = json_decode(save_string);
    
    // Load location
    with (o_elizabeth) {
        x = save_data[? "x"];
        y = save_data[? "y"];
        last_room = noone; // Set last room to prevent snapping to the start location
    }
    
    // Load stats
    with (o_player_stats) {
        level = save_data[? "level"];
        get_stats_from_class("elizabeth"); // Make sure to update the stats with the new level
        draw_health = stats[? "health"];
        
        // Load the items
        ds_list_copy(items, save_data[? "items"]);
        ds_list_copy(item_number, save_data[? "item number"]);
    }
    
    // Load the game
    room_goto(save_data[? "room"]);
    
    // Destroy the data map
    ds_map_destroy(save_data);
    show_debug_message("Game loaded.");
} else {
    show_debug_message("No save file.");
}
