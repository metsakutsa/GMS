///activate_interactable_object(xdir, ydir)
var xdir = argument0;
var ydir = argument1;

// Is there an object?
var interactable = instance_place(x+xdir, y+ydir, o_interactable_parent);

// If there is a speaker object and we press the action button
if (o_input.action && interactable != noone) {
    /// Activate the dialog
    with (interactable) {
        event_user(ACTIVATE);
    }
}
