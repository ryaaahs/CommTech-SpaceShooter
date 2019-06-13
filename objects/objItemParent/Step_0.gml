/// @description 
y += vMovment;

// xScale/yScale image changing
image_angle += rot * 0.2;

if(!swap){
	if((image_xscale >= 0.5000) && (image_yscale >= 0.5000)){
		image_xscale += -0.01; 
		image_yscale += -0.01;
	}else swap = true; 
	
	
}else if (swap){
	if((image_xscale <= 1) && (image_yscale <= 1)){
		image_xscale += 0.01; 
		image_yscale += 0.01; 	
	}else swap = false;
}

//Destroy the instance off screen 
if(y >= room_height + sprite_yoffset){
	instance_destroy(); 	
}