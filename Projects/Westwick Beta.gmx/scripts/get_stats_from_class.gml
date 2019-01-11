///get_stats_from_class(class_string);

var class_string = argument0;

//Create and copy the stats map
var stats = json_decode(json_encode(o_data.classes[? class_string]));

// Set maxhealth and health
stats[? "maxhealth"] = calculate_health(level, stats[? "health"]);
stats[? "health"] = stats[? "maxhealth"];

// Set experience
if (object_index == o_player_stats) {
    stats[? "maxexperience"] = level * 10;
}

//Return the stats map
return stats;
