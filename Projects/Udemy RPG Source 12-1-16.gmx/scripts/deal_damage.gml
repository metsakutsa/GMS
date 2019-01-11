///deal_damage(attacker, defender, critical, modifier)
/*
    Takes an attacker, defender, and critical (true or false) and
    deals damage to the defender using that information. This function
    also contains the formula for calculating damage.
*/

var attacker = argument0.stats_object;
var defender = argument1.stats_object;
var critical = argument2;
var modifier = argument3;

var attack = attacker.stats[? "attack"];
var defense = defender.stats[? "defense"];
var defending_unit = argument1;

if (instance_exists(defender) && instance_exists(attacker)) {
    // Magic formula for dealing damage
    var damage = (attack+(attacker.level*3)+(1-defense*.05))*.5;
    
    // Calculate the total damage (with critical)
    var total_damage = (damage+(critical*damage*(attacker.stats[? "critical"]/100)))/(defender.status_effect[status.defend]+1);
    total_damage *= modifier;
    
    // Deal the damage
    defender.stats[? "health"] -= total_damage;
    
    // Create the hit text object
    var hit = instance_create(defending_unit.x, defending_unit.y-80, o_hit);
    hit.amount = round(total_damage);
    hit.critical = critical;
}
