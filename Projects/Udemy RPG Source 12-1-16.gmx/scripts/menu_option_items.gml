///menu_option_items()
/*
    This function is called when the menu option "items" is selected.
    It creates the item list, sets it as a child, and then
    disables the current option list.
*/

child = instance_create(x+width+4, y, o_item_list_ui);
child.parent = id;
enabled = false;
