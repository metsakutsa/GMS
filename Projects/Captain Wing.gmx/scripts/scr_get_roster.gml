///scr_get_roster();

with obj_roster instance_destroy();

if instance_exists(obj_roster){
    for (pos=0; pos< array_length_1d(character)-1; pos++) {
        if !instance_exists(character[pos]) {instance_create(1000,1000,character[pos])}
    }
}
