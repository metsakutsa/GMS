///battle_run_state()
/*
    This script is used as the battle run state.
*/

change_sprites(s_battle_elizabeth_escape, 0, .2);
depth = 0;
action_meter = 0;

var enemy_speed = o_enemy_battle_unit.stats_object.stats[? "speed"];
var enemy_level = o_enemy_battle_unit.stats_object.level;
var my_speed = stats_object.stats[? "speed"];
var my_level = stats_object.level;

var run_chance = clamp(.05, ((my_level-enemy_level)+(my_speed-enemy_speed))/20, 1);
show_debug_message(run_chance);

if (animation_hit_frame(0) && o_battle.play) {
    if (chance(run_chance)) {
        with (o_enemy_battle_unit) state = battle_wait_state;
        var transition = instance_create(0, 0, o_fade_transition);
        transition.next_room = o_game.last_room;
        enabled = false;
        create_message_at_view_center("You escaped.");
        o_battle_play = false;
    } else {
        var message = create_message_at_view_center("Escape attempt.");
        message.alarm[0] = room_speed/3;
    }
}
