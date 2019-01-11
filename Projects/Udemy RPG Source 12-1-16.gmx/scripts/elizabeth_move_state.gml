///elizabeth_move_state()
/*
    This state is used to move Elizabeth. It also
    handles speaking with NPC's and random
    encounters.
*/
// Check for a message
if (instance_exists(o_message_ui)) {
    state = elizabeth_wait_state;
    exit;
}

// Get the input for movement
var hspd = (o_input.right - o_input.left)*spd;
var vspd = (o_input.down - o_input.up)*spd;

// Move Elizabeth applying a speed
if (!move(hspd, vspd)) {
    // Attempt to slide
    move_intended_direction(hspd, vspd, 10);
}

// Get the direction we are facing
var xdir = lengthdir_x(8, facing*90);
var ydir = lengthdir_y(8, facing*90);

// Check for an object that can be activated
activate_interactable_object(xdir, ydir);

// Check for menu
if (o_input.back) {
    if (!instance_exists(o_menu_ui)) {
        // Create the menu ui object
        instance_create(16, 16, o_menu_ui);
        
        // Exit to prevent a random encounter in the moment the menu is created
        exit;
    }
}

// Check for random encounter
if (!instance_exists(o_last_encounter)) {
    instance_create(x, y, o_last_encounter);
    o_last_encounter.distance = random_range(32, 256);
} else {
    // I'm using a distance to keep random encounters form being too frequent
    if (point_distance(x, y, o_last_encounter.x, o_last_encounter.y) >= o_last_encounter.distance) {
        o_last_encounter.distance = random_range(32, 256);
        o_last_encounter.x = x;
        o_last_encounter.y = y;
        random_encounter(1);
    }
}
