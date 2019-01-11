///view_follow_elizabeth_state()
/*
    This state makes the view follow Elizabeth.
*/

if (instance_exists(o_elizabeth)) {
    target[? "x"] = o_elizabeth.x+8;
    target[? "y"] = o_elizabeth.y+8;
}
