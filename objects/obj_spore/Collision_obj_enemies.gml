instance_destroy();

other.hp -= 1;
if (other.hp <= 0) {
	
	global.seeds += other.seed_reward;
	other.speed = 0;
	other.sprite_index = other.sprite_death;
	
};