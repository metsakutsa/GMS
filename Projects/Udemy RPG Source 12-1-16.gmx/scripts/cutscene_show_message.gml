///cutscene_show_message(text)
/*
    This function is designed to be called in a cutscene sequence.
    It will show the dialog. When the dialog reaches the end,
    and the player proceeds, the cutscene will move on to the new action.
*/

var text = argument0;

if (!instance_exists(o_message_ui)) {
    var message = create_message_at_view_center(text);
    message.cutscene = id;
}
