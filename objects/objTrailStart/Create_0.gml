/// @description 
with(instance_create_layer(x, y + sprite_yoffset, "Instances", objTrailFollow)){
	follow = other.id; 
}