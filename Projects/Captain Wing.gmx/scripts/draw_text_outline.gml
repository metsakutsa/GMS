/// draw_text_outline(x, y, text, *width, *outline_color);

var x1 = argument[0],
    y1 = argument[1],
    text = argument[2];
    c1 = c_black;

var c2 = draw_get_colour();

if (argument_count >= 4){
    width = argument[3];
    if (argument_count >= 5){
        c1 = argument[4];
    }
}

draw_set_color(c1);

draw_text(x1 - width, y1 - width, text);
draw_text(x1, y1 - width, text);
draw_text(x1 + width, y1 - width, text);
draw_text(x1 - width, y1, text);
draw_text(x1 + width, y1, text);
draw_text(x1 - width, y1 + width, text);
draw_text(x1, y1 + width, text);
draw_text(x1 + width, y1 + width, text);

draw_set_color(c2);

draw_text(x1, y1, text);
