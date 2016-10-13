///scr_display_icon(icon0...icon5);

spacing = 16;

//Starting coordinates
xpos = 300;
ypos = view_hview[0] - 200;

var i = 0;
for (i = 0; i < argument_count; i++) {
    with(instance_create(xpos + i*100 + i*spacing, ypos, obj_button)){
        image_index = argument[i];
        function = argument[i];
    }
}
