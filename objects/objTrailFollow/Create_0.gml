/// @description 
follow = ""; 
idVal = global.amount;
global.amount += 1
movement = 0; 
if(instance_number(objTrailFollow) < 5){
	with(instance_create_layer(x, y + sprite_yoffset, "Instances", objTrailFollow)){
		follow = other.id;  
	}
}

switch(idVal){
	case 1:
	movement = 0.5;
	break;
	
	case 2:
	movement = 0.45;
	image_alpha = 0.75;
	break;
	
	case 3:
	movement = 0.4;
	image_alpha = 0.55;
	break;
	
	case 4:
	movement = 0.35; 
	image_alpha = 0.35;
	break;
	
	case 5:
	movement = 0.3; 
	image_alpha = 0.25;
	break;
		
}