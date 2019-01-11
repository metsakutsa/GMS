///create_items_option_list()
/*
    This function is used to create the items option list
    for the item ui.
*/

var options = ds_list_create();

// Loop through the items
for (var i=0; i<ds_list_size(o_player_stats.items); i++) {
    var item = o_player_stats.items[| i];
    var item_number = o_player_stats.item_number[| i];
    var option_text = "x" +string(item_number)+" "+item[? "name"];
    if (item_number > 1) option_text+="s";
    
    // Attempt to prevent the text from going past the ui frame
    if (string_length(option_text) > 13) {
        option_text = string_copy(option_text, 0, 10);
        option_text += "...";
    }
    
    // Create the options
    options[| i] = create_option(option_text, item_option_use_ui);
}
mark_option_list(options);
return options;
