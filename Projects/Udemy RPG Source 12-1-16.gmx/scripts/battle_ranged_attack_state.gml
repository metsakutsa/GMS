///battle_ranged_attack_state(xoffset, yoffset, effect, effect frame)
/*
    This script is used as the battle player's attack state.
    In this state the player executes the attack animation and
    damages the enemy when the right frame is hit.
*/
var xoffset = argument0;
var yoffset = argument1;
var effect = argument2;
var effect_frame = argument3;

// Set the sprite
battle_set_sprite(RANGED, 0);

// Hit
if (animation_hit_frame(effect_frame)) {
    var effect = instance_create(x+xoffset, y+yoffset, effect);
    effect.image_xscale = image_xscale;
    effect.direction = point_direction(0, 0, image_xscale, 0);
    effect.creator = id;
    if (object_index == o_player_battle_unit) {
        effect.target = o_enemy_battle_unit;
    } else {
        effect.target = o_player_battle_unit;
    }
}

// Return to the idle state
if (animation_end()) {
    state = battle_wait_state;
}

