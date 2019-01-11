///set_tile_depth(layer_depth, yoffset)
/*
    Set tile depths. This loops through the tiles
    in the room at a specific layer depth and sets the
    depth on the individual tiles.
*/

var layer_depth = argument0;
var yoffset = argument1;

// Get an array of all the tiles on a tile layer
var tiles = tile_get_ids_at_depth(layer_depth);

// Loop through the tiles and set their depth
var array_size = array_length_1d(tiles);
for (var i=0; i<array_size; i++) {
    var tile = tiles[i];
    
    // Make sure the tile exists before you set its depth
    if (tile_exists(tile)) {
        tile_set_depth(tile, -tile_get_y(tile)+yoffset);
    }
}
