///roll_dice();

o_fight_menu.physical = 0;
o_fight_menu.yellow = 0;
o_fight_menu.red = 0;
o_fight_menu.green = 0;
o_fight_menu.blue = 0;
o_fight_menu.purple = 0;


if instance_exists(o_die){
    with o_die{
        if rolling and !held{
            roll = irandom_range(1,6);
            rolling = false;
        }
        switch(roll) {
            case 1: o_fight_menu.physical++ ;break;
            case 2: o_fight_menu.yellow++ ;break;
            case 3: o_fight_menu.red++ ;break;
            case 4: o_fight_menu.green++ ;break;
            case 5: o_fight_menu.blue++ ;break;
            case 6: o_fight_menu.purple++ ;break;
        }
    }
    o_fight_menu.roll_count --;
}
