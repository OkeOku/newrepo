if (hp <= 0) {

	image_speed = 0;
	layer_sprite_create(layer_get_id("Assets_1"), x, y, spr_enemy_cow_death)
	instance_destroy();
	
};