///action_defend()
// Set both units to wait
with (o_battle_unit) {
    state = battle_wait_state;
}

// Make the current unit defend
stats_object.status_effect[status.defend] = true;
action_meter = max_action_meter/2;
