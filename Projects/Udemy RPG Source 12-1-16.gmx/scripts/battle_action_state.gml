///battle_action_state()
/*
    This script is used as the battle action state.
    In this state the player waits for input on the battle action
    that should be taken.
    
    The enemy jumps right into the move forward
    state.
*/

battle_set_sprite(IDLE, 0);
depth = -1;

// Change the view state again
o_battle_view.state = battle_view_idle_state;

// Enemy AI
if (object_index == o_enemy_battle_unit) {
    // Check for attack and if the stats map doesn't exists we are dead
    if (ds_exists(stats, ds_type_map) && stats[? "health"] == draw_health) {
        // Make the enemy attack or defend based on the player's action meter
        var action_index = 0;
        if (o_player_battle_unit.action_meter > 60 && chance(.8)) action_index = 1;
        if (chance(.1)) action_index = 1;
        
        // Check for defend exception
        var action = actions[| action_index];
        if (action[? "name"] == "Defend") {
            script_execute(asset_get_index(action[? "action"]));
        } else {
            state = asset_get_index(action[? "action"]);
        }
    }
}
