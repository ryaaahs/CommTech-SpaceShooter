/// @description Collision with Ships
//Destroy both the player and the other ship

global.playerHealth -= 1; 
flash = 1; 

instance_destroy(); 
instance_destroy(other); 	


