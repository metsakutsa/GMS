///scr_display_icon(icon0...icon5);

//Currently selected icon
globalvar cursor;
cursor = 0;
globalvar action;


//Space between icons
spacing = 20;

//Starting coordinates
xpos = (window_get_width() - 100*argument_count- spacing*argument_count)/2;
ypos = window_get_height()-window_get_height()/4.5;

var i = 0;
for (i = 0; i < argument_count; i++) {
    action[i] = instance_create(xpos + i*100 + i*spacing, ypos, obj_button);
    with(action[i]){
        image_index = argument[i];
        function = argument[i];
    }
}



