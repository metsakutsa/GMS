///encounter()
/*
    Initiates an incounter.
*/

o_elizabeth.state = elizabeth_encounter_state;
if (!instance_exists(o_battle_transition)) {
    instance_create(0, 0, o_battle_transition);
    
    // Update the song
    o_audio_player.fade = false;
    o_audio_player.next_song = a_battle_music;
}
