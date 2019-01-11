///scr_get_input
MOVELEFT = keyboard_check(ord('A'));
MOVERIGHT = keyboard_check(ord('D'));
JUMP = keyboard_check(ord('W'));
CROUCH = keyboard_check(ord('S'));
INTERACT = keyboard_check_pressed(ord('E'));
ATTACK = keyboard_check_pressed(vk_space);
PAUSE = keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord('P'));
MENU = keyboard_check_pressed(ord('Q'));

//Get the axis
xaxis = (MOVERIGHT - MOVELEFT);
