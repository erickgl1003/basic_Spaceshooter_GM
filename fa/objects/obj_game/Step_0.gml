if(keyboard_check_pressed(ord("Z"))){
	if(room = rm_start) room_goto(rm_game);
	else if(room = rm_lose){
		lives = 4;
		room_goto(rm_start);
	}
	
}
else if(room = rm_game && global.paused){
	alarm[0]++;
}