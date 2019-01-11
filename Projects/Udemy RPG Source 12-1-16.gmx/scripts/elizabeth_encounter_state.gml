///elizabeth_encounter_state()
/*
    This state is used to freeze Elizabeth during
    the encounter transition.
*/

// Stop Elizabeth's animations
image_speed = 0;
image_index = 0;

// Turn off persistence so Elizabeth doesn't appear in the battle room
persistent = false;

