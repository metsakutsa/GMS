///menu_option_save()
/*
    This function is called when the menu option "save" is selected.
    First, It saves the game, then, displays a "Game Saved!" message.
    Finally, it destroys the menu options.
*/

save_game();
create_message_at_view_center("Game saved!");
instance_destroy();
