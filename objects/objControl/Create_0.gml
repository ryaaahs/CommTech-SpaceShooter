/// @description 
// Init Global Variables
audio_play_sound(mscGame, 10, true); 
randomize(); 
global.gameScore = 0; 
global.highScore = 0; //Temp 
global.combo = 1; 
global.flash = false; 
global.playerHealth = 2; 
global.playerArmor = 0; 
global.currentBombs = 2; 
global.amount = 1;
global.invicibility = false;
global.gameWin = false;
gameOver = false

//Create the key Objects
instance_create_layer(x, y, "GameObjects", objCamera);
instance_create_layer(x, y, "GameObjects", objSpawner);
instance_create_layer(128, 368, "Instances", objPlayer); 

//Resize Font
if(instance_exists(objCamera)){
	if(objCamera.size == 1){
		draw_set_font(fntGameFont); 	
	}else{
		draw_set_font(fntGameFontZoomTwo); 
	}
}
