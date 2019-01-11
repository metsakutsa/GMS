///heal_effect(args_list)
/*
    This function is executed when a healing item is used.
*/
var args_list = argument0;
var amount = args_list[| 0];

// Heal the player
if (instance_exists(o_player_stats)) {
    with (o_player_stats) {
        stats[? "health"] += amount;
        stats[? "health"] = min(stats[? "health"], stats[? "maxhealth"]);
    }
}

// Show the effect based on if the battle player exists or if Elizabeth exists
if (instance_exists(o_player_battle_unit)) {
    instance_create(o_player_battle_unit.x, o_player_battle_unit.y, o_heal_particle_effect);
    var heal = instance_create(o_player_battle_unit.x, o_player_battle_unit.bbox_top, o_heal);
    heal.amount = amount;
} else if (instance_exists(o_elizabeth)) {
    instance_create(o_elizabeth.x+8, o_elizabeth.y+32, o_heal_particle_effect);
    var heal = instance_create(o_elizabeth.x+8, o_elizabeth.bbox_top-18, o_heal);
    heal.amount = amount;
}
