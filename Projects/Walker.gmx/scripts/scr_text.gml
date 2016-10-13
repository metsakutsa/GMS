///scr_text("Text", speed, x, y);

//Creates an object that contains the text along with the speed to display the text
//And a bunch of other variables that you can adjust below

//Use x and y to create obj_text and store it in variable txt to modify it later
txt = instance_create(argument2, argument3, obj_text);
with (txt) {
    padding = 16;
    maxlength = view_wview[0]; //The width of the view in the room
    text = argument0;
    spd = argument1;    //This adjusts the speed that characters are displayed at as well as the speed of the fading effect
    font = fnt;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    //Get the maximum width and height of a string
    text_width = string_width_ext(text, font_size + (font_size/2), maxlength);
    text_height = string_height_ext(text, font_size + (font_size/2), maxlength);    
    
    boxwidth = text_width + padding*2;
    boxheight = text_height + padding*2;
}

