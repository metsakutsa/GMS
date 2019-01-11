///item_option_use_ui()
/*
    This function is called when an item is selected.
*/
child = instance_create(x+width+4, y, o_item_use_ui);
child.parent = id;
enabled = false;
