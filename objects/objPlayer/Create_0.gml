/// @description Player Variables 
//General Variables 
playerSpeed = 4; 
shootAlarm = room_speed / 8; 
shootTimer = 0; 
flash = 0; 
shotLevel = 1; 
death = false; 

wait = 0;
waitTimer = room_speed / 8; 
bombTicks = 0; 

if(global.invicibility){
	sprite_index = sprPlayerNoHit;
	image_speed = 0.5;
}

invicAlarm = 0; 

//Game Start;
x = room_width/2;
y = room_height - 48; 

//Create the trail
instance_create_layer(x, y + sprite_yoffset, "Instances", objTrailStart); 