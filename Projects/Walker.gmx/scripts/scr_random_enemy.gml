///scr_random_enemy(option 1, ... , option n);

//A script for generating a random enemy depending on which level the player is on
//It takes a list of possible enemy types as arguments and chooses a random one from
//those to generate the battle scene with
show_debug_message("hei");

//first kill all old enemy objects
if(instance_exists(obj_moomin)){
    with(obj_moomin){instance_destroy()};
}
if(instance_exists(obj_imp)){
    with(obj_imp){instance_destroy()};
}

switch(room){
    default:
        break;
    
    case 0:
        scr_room0_enemy_spawn();
    
    case 1:
        scr_room0_enemy_spawn();
}


background_visible[7] = true;
