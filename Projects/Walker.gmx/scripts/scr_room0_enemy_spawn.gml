///scr_room0_enemy_spawn();

//spawns a room0 enemy
randomize();
switch(irandom_range(1,2)){
    default:
        break;
        
    case MOOMIN:
        instance_create(320, 220, obj_moomin);
        break;
        
    case IMP:
        instance_create(320, 220, obj_imp);
        break;
}
