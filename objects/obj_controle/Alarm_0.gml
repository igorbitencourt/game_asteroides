/// @description Insert description here
if room == rm_jogo {
	randomize();
var melhoria = choose(obj_melhoria_escudo, obj_melhoria_projetil);

instance_create_layer(random_range(0, room_width), random_range(0, room_height), "Instances", melhoria);

alarm[0] = 600;

}
