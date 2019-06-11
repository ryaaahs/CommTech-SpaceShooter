/// @description 

// Inherit the parent event
event_inherited();

// Basic side to side movement
if(horizTimer >= horizAlarm){
	if(firstShift){
		horizSpeed *= -1; 	
		horizAlarm *= 2; 
		horizTimer = 0; 
		firstShift = false; 
	}else{
		horizSpeed *= -1; 
		horizTimer = 0; 
	}
}else{
	horizTimer++; 	
}

x += horizSpeed; 
