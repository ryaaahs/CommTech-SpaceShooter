/// @description 
if(wave == 1 && !activeWave){
	repeat(irandom_range(3, 5)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[0]);	
	}
	activeWave = true; 
}else if(wave == 2 && !activeWave){
	repeat(irandom_range(4, 6)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[0]);	
	}
	instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[1]);
	activeWave = true; 
}else if(wave == 3 && !activeWave){
	repeat(irandom_range(6, 8)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[0]);	
	}
	repeat(irandom_range(2, 3)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[1]);	
	}
	activeWave = true; 
}else if(wave == 4 && !activeWave){
	repeat(irandom_range(3, 4)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[2]);	
	}
	repeat(irandom_range(1, 2)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[3]);	
	}
	activeWave = true; 
}else if(wave == 5 && !activeWave){
	repeat(irandom_range(3, 4)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[0]);	
	}
	repeat(irandom_range(3, 4)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[2]);	
	}
	repeat(irandom_range(1, 2)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[3]);	
	}
	activeWave = true; 
}else if(wave == 6 && !activeWave){
	repeat(irandom_range(2, 3)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[1]);	
	}
	repeat(irandom_range(4, 6)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[2]);	
	}
	repeat(irandom_range(2, 3)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[3]);	
	}
	activeWave = true; 
}else if(wave == 7 && !activeWave){
	repeat(irandom_range(6, 8)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[2]);	
	}
	repeat(irandom_range(4, 5)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[3]);	
	}
	activeWave = true; 
}else if(wave == 8 && !activeWave){
	repeat(irandom_range(4, 6)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[2]);	
	}
	repeat(irandom_range(3, 4)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[3]);	
	}
	repeat(irandom_range(1, 2)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[4]);	
	}
	activeWave = true; 
}else if(wave == 9 && !activeWave){
	repeat(irandom_range(2, 3)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[4]);	
	}
	repeat(irandom_range(1, 2)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[5]);	
	}
	activeWave = true; 
}else if(wave == 10 && !activeWave){
	repeat(irandom_range(2, 3)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[4]);	
	}
	repeat(irandom_range(2, 3)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[5]);	
	}
	repeat(irandom_range(1, 2)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[6]);	
	}
	activeWave = true; 
}else if(wave == 11 && !activeWave){
	repeat(irandom_range(4, 6)){
		instance_create_layer(random_range(16, room_width-16), random_range(-8, -24), "Instances", sl[0]);	
	}
	instance_create_layer(room_width / 2, random_range(-8, -24), "Instances", sl[7]);	
	activeWave = true; 
}else if(wave == 12 && !activeWave){
	global.gameWin = true;  
}




if(!instance_exists(objShipParent)){
	wave++	
	activeWave = false; 
}