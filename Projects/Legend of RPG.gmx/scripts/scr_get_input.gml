///scr_get_input
MOVELEFT = keyboard_check(ord('A'));
MOVERIGHT = keyboard_check(ord('D'));
MOVEUP = keyboard_check(ord('W'));
MOVEDOWN = keyboard_check(ord('S'));
DASH = keyboard_check_pressed(vk_shift);
ATTACK = keyboard_check_pressed(vk_space);
PAUSE = keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord('P'));
SPELL = keyboard_check_pressed(ord('Q'));

//Get the axis
xaxis = (MOVERIGHT - MOVELEFT);
yaxis = (MOVEDOWN - MOVEUP);
