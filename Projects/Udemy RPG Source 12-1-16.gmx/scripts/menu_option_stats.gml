///menu_option_stats()
/*
    This function is called when the menu option "stats" is selected.
    It create a message that displays the player's stats.
*/
var stats_string = "";
with (o_player_stats) {
    stats_string += "Level : "+ string(level)+"#";
    stats_string += "Name : "+string(stats[? "name"])+"#";
    stats_string += "Health : "+string(stats[? "health"])+"/"+string(stats[? "maxhealth"])+"#";
    stats_string += "Exp : "+string(stats[? "experience"])+"/"+string(stats[? "maxexperience"])+"#";
}
child = create_message(x+width+4, y, stats_string);
child.parent = id;
enabled = false;
