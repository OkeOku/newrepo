if (hp <= 0) {
	
	image_speed = 0;
	instance_destroy();
	layer_sprite_blend(layer_sprite_create(layer_get_id("Assets_1"), x, y, spr_carrot_deadboy), c_ltgray)
	
	audio_play_sound(snd_death, 1, false);

};