///scr_room_button_spawn( x, y, label, room);

var button = instance_create(argument0, argument1, obj_action_box);

button.label = argument2;
button.rm = argument3;

draw_set_color(c_white);
draw_text(100,100,"tere");
