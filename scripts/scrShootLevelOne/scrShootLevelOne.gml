//Level One Ship Shooting 

//Right Bullet
with(instance_create_layer(x - sprite_xoffset, y + 4,"ShotFlash" ,objBullet)){
			speed = 18; 
			direction = choose(95, 100);  
}

//Left Bullet
with(instance_create_layer(x + sprite_xoffset, y + 3,"ShotFlash" ,objBullet)){
		speed = 18; 
		direction = choose(85, 80); 
}

//Middle Bullet 
with(instance_create_layer(x, y - 3,"ShotFlash" ,objBulletMid)){
		speed = 18; 
		direction = 90; 
}