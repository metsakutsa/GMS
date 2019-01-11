///mark_option_list(list)
/*
    This function is used to mark the options maps inside the list
    so they are destroyed when the list is destroyed.
*/

var list = argument0;

// Loop through the list and mark all the maps
for (var i=0; i<ds_list_size(list); i++) {
    ds_list_mark_as_map(list, i);
}
