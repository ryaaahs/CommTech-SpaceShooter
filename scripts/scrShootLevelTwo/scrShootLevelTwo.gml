//Level Two Ship Shooting 
repeat(2){
	with(instance_create_layer(x, y - 6,"ShotFlash" ,objBullet)){
				speed = 18; 
				direction = choose(95, 100);  
	}
}

repeat(2){
	with(instance_create_layer(x, y - 6,"ShotFlash" ,objBullet)){
			speed = 18; 
			direction = choose(85, 80); 
	}
}
	
with(instance_create_layer(x, y - 6,"ShotFlash" ,objBulletMid)){
		speed = 18; 
		direction = 90; 
}