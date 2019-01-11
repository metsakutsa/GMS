///get_visible_text(pause_time)
/*
    This function is used to get the visible text and iterate
    through that text, pausing on punctuation.
*/

var pause_time = argument0;
var new_string = string_copy(text[text_page], 1, text_count);

if (string_length(new_string) > string_length(text_visible)) {
    // Check for new key stroke
    var last_char = string_char_at(new_string, text_count);
    if (last_char != " " && last_char != "#" && last_char != "") {
        audio_emitter_gain(emitter, random_range(.3, .5)*o_audio_player.sfx_volume);
        audio_emitter_pitch(emitter, random_range(voice_pitch-.1, voice_pitch+.1));
        audio_play_sound_on(emitter, voice, false, 10);
    }
    
    // Check for pause
    if ((last_char == "." || last_char == "," || last_char == "!" || last_char == "?") && text_count < string_length(text[text_page])) {
        alarm[0] = pause_time;
    }
    
    // Set new string
    text_visible = new_string;
}
