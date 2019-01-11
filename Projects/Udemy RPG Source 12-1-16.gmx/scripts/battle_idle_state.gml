///battle_idle_state()
/*
    This script is used as the battle idle state.
*/

battle_set_sprite(IDLE, 0);
depth = 0;

// Check to see if the battle timeline is running
if (o_battle.play && instance_exists(stats_object)) {
    // Add to action meter
    action_meter = min(action_meter+(stats_object.stats[? "speed"]+stats_object.level)/10, max_action_meter);
    
    // If we are ready enter the action state and pause the timeline
    if (action_meter == max_action_meter) {
        state = battle_action_state;
        o_battle.play = false;
        action_meter = 0;
        stats_object.status_effect[status.defend] = false;
    }
}

