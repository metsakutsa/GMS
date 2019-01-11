/// set_tile_depth(tile_layer, yoffset);

var tile_layer = argument0;
var yoffset = argument1;

// Get tile array
var tiles = tile_get_ids_at_depth(tile_layer);

// Loop through the tile array
var array_size = array_length_1d(tiles);

for (var i=0; i < array_size; i++){
    var tile = tiles[i];
    
    if tile_exists(tile){
        tile_set_depth(tile, -tile_get_y(tile) + yoffset);
    }
}

