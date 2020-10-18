var instance = instance_nearest(x + 8, y + 8, obj_enemies);
motion_set(point_direction(x, y, instance.x, instance.y) + irandom_range(-2, 2), 4);

audio_play_sound(snd_shoot, 1, false);