///menu_option_load()
/*
    This function is called when the menu option "load" is selected.
    It displays a "Game Loaded!" message, destroys the current message,
    and load the game.
*/

create_message_at_view_center("Game loaded!");
instance_destroy();
load_game();
