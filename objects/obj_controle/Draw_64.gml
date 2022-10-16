/// @description Insert description here

var _c = make_color_rgb(131, 68, 87);
var altura = display_get_height();
var largura = display_get_width();



if room == rm_menu {
	if alpha <= 0 {
		alpha_add = 0.05;
	}else if alpha >= 1 {
		alpha_add -= 0.05
	}
	
	alpha += alpha_add;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_ext_color(largura/2, altura/3, "Neste jogo voce deve desviar dos asteroides e destruilos para ganhar pontos, para vencer, chegue em 1000 pontos, Boa sorte!", 30, 500, c_white, c_white, c_white, c_white, 1);
	draw_text_color(largura/2, altura - altura/3, "Aperte 'ESPACO' para comecar", _c, _c, _c, _c, alpha);

	if keyboard_check_pressed(vk_space){
		room_goto(rm_jogo);
	}

}else if room == rm_jogo {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_color(20, 20, "Vidas: " + string(obj_nave.vida), _c, _c, _c, _c, 1);
	draw_text_color(20, 40, "Pontuacao: " + string(global.pont), c_white, c_white, c_white, c_white, 1);
	
}else if room == rm_final {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_ext_color(largura/2, altura/2, "Parabens! Voce conseguiu atingir 1000 pontos, se quiser jogar novamente, aperte 'R'", 80, 900, _c, _c, _c, _c, 1);

	if keyboard_check_pressed(ord("R")) {
		game_restart();
	}
}







