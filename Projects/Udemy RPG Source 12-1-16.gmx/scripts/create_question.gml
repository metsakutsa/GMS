///create_question(x, y, text, option_ui_object)
/*
    This function is used to create a question.
*/

var xx = argument0;
var yy = argument1;
var text = argument2;
var option_ui_object = argument3;

// Create the message ui
var message_ui = instance_create(0, 0, o_message_ui);

// Update the message ui
with (message_ui) {
    message = text;
    width = string_width(text)+16;
    height = string_height(text)+16;
    x = xx;
    y = yy;
    
    child = instance_create(x+width+4, y, option_ui_object);
    enabled = false;
}
