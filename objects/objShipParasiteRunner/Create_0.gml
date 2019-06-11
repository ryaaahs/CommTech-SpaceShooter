/// @description Init
event_inherited();
moveSideways = choose(0, 0, 0, 1, 1); 
//Pick a random speed
shipSpeed = irandom_range(2, 3); 
horizSpeed = moveSideways == 1 ? irandom_range(-2, 2): 0; 
if(horizSpeed != 0){
	direction = point_direction(x, y, lerp(x, x + shipSpeed, room_speed), lerp(y, y + horizSpeed, room_speed)  )	
}
/*if(moveSideways == 1){
	horizSpeed = irandom_range(1, 2);
}else{
	horizSpeed = 0;
}*/
horizTimer = 0;
horizAlarm = room_speed * 2; 
firstShift = true; 

shipScore = 15; 
shipHealth = 0.6; 
