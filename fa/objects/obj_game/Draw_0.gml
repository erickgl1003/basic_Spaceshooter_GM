if(room== rm_game){
	//draw_text(10,10,"LIVES: " + string(lives));
	draw_text(4,25,"STR: " + string(floor(global.str/10)));
	draw_text(4,35,"DEX: " + string(floor(global.dex/10)));
}
else if(room = rm_start){
	draw_set_halign(fa_center);
	var c = c_silver;
	var c2 = c_white;
	draw_text_transformed_color(room_width/2,room_height/5, "FIRST ATTEMP", 2,2,0,c,c,c,c,1)
	draw_text(room_width/2,room_height/5*2,"MOVEMENT: DIRECTIONAL KEYS");
	draw_text(room_width/2,room_height/5*3,"SHOOT: Z");
	draw_text_transformed_color(room_width/2,room_height/5*4, "PRESS Z TO START", 1.5,1.5,0,c2,c2,c2,c2,1)
	draw_set_halign(fa_left);
}
else if(room = rm_lose){
	draw_set_halign(fa_center);
	var c = c_red;
	var c2 = c_navy;
	draw_text_transformed_color(room_width/2,room_height/2, "GAME OVER", 2,2,0,c,c,c,c,1)
	draw_set_halign(fa_left);
}