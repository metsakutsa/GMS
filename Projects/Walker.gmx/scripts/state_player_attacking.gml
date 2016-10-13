///state_player_attacking();

dir = false;

if (x<640){
    dir = true;
    x+=room_speed;
}

else if ( x >= 640){
    x-=room_speed;
    if ( x <= 0){
        with(obj_player){
            state = state_player_idle;
        }
        exit;
    }
}
