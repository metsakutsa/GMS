///battle_attack_state()
/*
    This script is used as the battle player's attack state.
    In this state the player executes the attack animation and
    damages the enemy when the right frame is hit.
*/

battle_set_sprite(ATTACK, 0);

// Hit
if (animation_hit_frame(1)) {
    var foe = instance_place(x+32*image_xscale, y, o_battle_unit);
    set_hitflash(foe, room_speed/2);
    deal_damage(id, foe, chance(stats_object.stats[? "critical"]/100), 1);
    foe.state = battle_hit_state;
    view_screenshake(4, seconds_to_steps(.2));
    
    // Change the view state again
    o_battle_view.state = battle_view_idle_state;
}

// Return to the idle state
if (animation_end()) {
    state = battle_return_state;
}

