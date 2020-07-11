if(pos && !global.paused){
	image_alpha = 0.5;
	lives -= 1;
	obj_health.image_index +=1;
	audio_play_sound(msc_dam,3,0);
	repeat(10) instance_create_layer(x,y,"Instances",obj_res);
	if(lives <= 0){
		alarm[0] = 30;
		image_alpha = 0;
		global.paused = true;
	}
	else{
		det = 0;
		alarm[1] = 15;
	}
	pos = false;
	alarm[2] = inv_window;
}