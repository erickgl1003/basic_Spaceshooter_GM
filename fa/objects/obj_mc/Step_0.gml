if(!global.paused){
lim = 2;
dec_rate = 0.1;
inc_rate = 0.3;
draw_back = 2;
flag += 1;

if(keyboard_check_pressed(vk_space)){
	layer_hspeed("Background",0);
	hsp = hspeed;
	vsp = vspeed;
	hspeed = 0;
	vspeed = 0;
	global.paused = true;
}
else{
	if(keyboard_check(vk_right)){
		hspeed = hspeed +inc_rate;
	}
	if(keyboard_check(vk_left)){
		hspeed = hspeed -inc_rate;	
	}

	if(keyboard_check(vk_up)){
		vspeed = vspeed - inc_rate;
	}
	if(keyboard_check(vk_down)){
		vspeed = vspeed + inc_rate;	
	}

	if(keyboard_check(ord("Z")) &&	flag > firerate){
		audio_play_sound(msc_shot,1,0);
		instance_create_layer(x,y, "Instances", obj_bul);
		side = 0;
		ch = 0;
		toshoot = floor(global.dex/10);
		repeat(toshoot){
			if(ch%2 == 0){
				side +=4;
			}
			instance_create_layer(x,y+side, "Instances", obj_bul);
			side *= -1;
			ch++;
		}
		flag= 0;

	}

	if(abs(vspeed) > lim) vspeed = lim * sign(vspeed);
	if(abs(hspeed) > lim) hspeed = lim * sign(hspeed);

	if(abs(hspeed) > 0) hspeed = hspeed-(dec_rate*sign(hspeed));
	if(abs(vspeed) > 0) vspeed = vspeed-(dec_rate*sign(vspeed));

	if (x+sprite_width/2>room_width) hspeed = -draw_back;
	 
	if( x-sprite_width/2 < 12) hspeed = +draw_back;

	if (y+sprite_height/2>room_height) vspeed = -draw_back;
	 
	if( y-sprite_height/2 < 0) vspeed = +draw_back;
	}
}
else{
	if(keyboard_check_pressed(vk_space)) 
	{
		global.paused = false;	
		layer_hspeed("Background",back_sp)
		vspeed = vsp;
		hspeed = hsp;
	}
}