instance_destroy();

other.hp -= 1;
if (other.hp <= 0) {
	instance_destroy(other);
	global.seeds += other.seed_reward;
	};