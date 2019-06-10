/// @description 
// Init Global Variables 
global.gameScore = 0; 
global.combo = 1; 
global.flash = false; 
global.playerHealth = 3; 

//Create the key Objects
instance_create_layer(x, y, "GameObjects", objCamera);
instance_create_layer(x, y, "GameObjects", objSpawner);

//Resize Font
if(instance_exists(objCamera)){
	if(objCamera.size == 1){
		draw_set_font(fntGameFont); 	
	}else{
		draw_set_font(fntGameFontZoomTwo); 
	}
}
