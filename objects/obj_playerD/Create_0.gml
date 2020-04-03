hsp = 3;
vsp = -4;
grv = 0.2;
done = 0;

image_speed = 0;
image_index = 0;
audio_sound_pitch(snd_die,0.8);
audio_play_sound(snd_die,10,false);
game_set_speed(60,gamespeed_fps);
with (obj_camera) follow = other.id;