///create_option(text, script)
/*
    This function is used to create an list of option maps for
    UI menus.
*/

var text = argument0;
var script = argument1;

// Create the option map
var option = ds_map_create();
option[? "text"] = text;
option[? "script"] = script;

return option;
