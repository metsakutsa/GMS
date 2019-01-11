///get_item_data()
// This may end up in an external file, for now it is here
return json_decode('{
    "apple" : {
        "name"          : "Apple",
        "effect"        : "heal_effect",
        "info"          : "A small fruit that#heals 20 health.",
        "arguments"     : [20],
        "battle"        : 0,
    },
    
    "potion" : {
        "name"          : "Potion",
        "effect"        : "heal_effect",
        "info"          : "A potion that #heals 50 health.",
        "arguments"     : [50],
        "battle"        : 0,
    },
}');
