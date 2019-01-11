///get_action_data()
// This may end up in an external file, for now it is here
return json_decode('{
    "attack" : {
        "name"          : "Attack",
        "action"        : "battle_approach_state",
        "info"          : "A basic melee#attack.",
    },
    
    "defend" : {
        "name"          : "Defend",
        "action"        : "action_defend",
        "info"          : "Reduces damage taken#by half and sets#action bar to half.",
    },
    
    "fireball" : {
        "name"          : "Fireball",
        "action"        : "battle_fireball_state",
        "info"          : "Has a lower damage#rate but a higher#critical chance.",
    },
    
    "sonar" : {
        "name"          : "Sonar",
        "action"        : "battle_sonar_state",
        "info"          : "A basic ranged#attack.",
    },
}');
