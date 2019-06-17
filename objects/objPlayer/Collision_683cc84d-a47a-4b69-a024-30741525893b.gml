/// @description 

// Get the object name and check to see which one is which
// If the name matches, do the mechanic. 
var objName = object_get_name(other.object_index)
audio_play_sound(sndPowerUp, 1, false); 
if(objName == "objPowerUp"){
	if(shotLevel < 3){
		shotLevel++;	
	}else{
		global.gameScore += 100; 	
	}

	with(other){
		instance_destroy(); 
	}
}

if(objName == "objShieldUp"){
	if(global.playerArmor != 1){
		global.playerArmor++; 	
	}else{
		global.gameScore += 100;	
	}

	with(other){
		instance_destroy(); 
	}
}
