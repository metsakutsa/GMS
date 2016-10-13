///scr_display_icon(icon0...icon5);



//Currently selected icon
globalvar cursor;
cursor = 0;
globalvar action;


//Space between icons
spacing = 16;

//Starting coordinates
xpos = 300;
ypos = view_hview[0] - 200;

var i = 0;
for (i = 0; i < argument_count; i++) {
    action[i] = instance_create(xpos + i*100 + i*spacing, ypos, obj_button);
    with(action[i]){
        image_index = argument[i];
        function = argument[i];
    }
}

//Create the skillbar interface
instance_create(0,0,obj_interface);

