/// @description 
spawnAlarm = room_speed*2;
spawnTimer = 0; 

for(var i=0; i < 6; i++){
	sl[i] = 0; 	
}

sl[0] = objShipRunner;
sl[1] = objShipShooter; 
sl[2] = objShipHeavyRunner;
sl[3] = objShipHeavyShooter; 
sl[4] = objShipParasiteRunner;
sl[5] = objShipParasiteShooter; 