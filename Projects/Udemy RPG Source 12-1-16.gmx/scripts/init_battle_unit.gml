///init_battle_unit(name, level, enemy, idle_speed, attack_speed, hit_speed, ranged_speed)
var name = argument0;
var level = argument1;
var enemy = argument2;
var idle_speed = argument3;
var attack_speed = argument4;
var hit_speed = argument5;
var ranged_speed = argument6;

// Create the battle unit
id.level = level; // Set the level

// Set the stats object
stats_object = id;
if (!enemy) stats_object = o_player_stats;

// Get the action list for enemies
if (enemy) {
    // Get the stats
    with (stats_object) {
        get_stats_from_class(name);
        draw_health = stats[? "health"];
        
        // Create the action list
        actions = create_action_list();
    }
}

with (stats_object) {
    // Create the status effect array
    status_effect[status.defend] = false;
    status_effect[status.slow] = false;
    status_effect[status.burnt] = false;
}


// Set the xscale
image_xscale = 1-enemy*2;

// Set sprite array
sprite[IDLE] = asset_get_index("s_battle_"+string_lower(stats_object.stats[? "name"]+"_idle"));
sprite[APPROACH] = asset_get_index("s_battle_"+string_lower(stats_object.stats[? "name"]+"_approach"));
sprite[ATTACK] = asset_get_index("s_battle_"+string_lower(stats_object.stats[? "name"]+"_attack"));
sprite[RETURN] = asset_get_index("s_battle_"+string_lower(stats_object.stats[? "name"]+"_return"));
sprite[HIT] = asset_get_index("s_battle_"+string_lower(stats_object.stats[? "name"]+"_hit"));
sprite[RANGED] = asset_get_index("s_battle_"+string_lower(stats_object.stats[? "name"]+"_ranged"));

// Set animation speed array
animation_speed[IDLE] = idle_speed;
animation_speed[APPROACH] = 0;
animation_speed[ATTACK] = attack_speed;
animation_speed[RETURN] = 0;
animation_speed[HIT] = hit_speed;
animation_speed[RANGED] = ranged_speed;

// Set Sprite
image_speed = animation_speed[IDLE];
sprite_index = sprite[IDLE];
