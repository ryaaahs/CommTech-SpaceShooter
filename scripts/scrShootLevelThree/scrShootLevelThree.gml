//Level Three Ship Shooting 
repeat(2){
	with(instance_create_layer(x - 8, y - other.sprite_yoffset+ 4,"Instances" ,objBullet)){
				speed = 18; 
				direction = choose(95, 100);  
	}
}

repeat(2){
	with(instance_create_layer(x + 8, y - other.sprite_yoffset+ 4,"Instances" ,objBullet)){
			speed = 18; 
			direction = choose(85, 80); 
	}
}
	
with(instance_create_layer(x - 8, y - other.sprite_yoffset+ 4,"Instances" ,objBulletMid)){
		speed = 18; 
		direction = 90; 
}

with(instance_create_layer(x + 8, y - other.sprite_yoffset + 4,"Instances" ,objBulletMid)){
		speed = 18; 
		direction = 90; 
}