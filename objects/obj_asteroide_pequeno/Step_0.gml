/// @description Insert description here

move_wrap(true, true, 0)

image_angle += rotac

if vida <= 0 {
	global.pont += 25;
		audio_play_sound(snd_explosao, 1, false);
	
		repeat(5) {
		instance_create_layer(x, y, "Instances", obj_detritos)
	}
	
	
	instance_destroy();
}





