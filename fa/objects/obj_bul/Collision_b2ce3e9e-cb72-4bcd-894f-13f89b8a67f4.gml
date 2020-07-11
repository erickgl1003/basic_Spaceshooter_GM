with(other){
	if(sprite_index == spr_en1) sprite_index = 	spr_en1_alt;
	else{
		if(sprite_index == spr_en1_alt){
			global.str++;	
				if(global.str%10 == 0){
					var ins = instance_create_layer(obj_mc.x,obj_mc.y,"Instances",obj_red);
					ins.image_blend = c_red;
				}
		}
		else if(sprite_index == spr_en2){
			global.dex++;	
				if(global.dex%10 == 0){
					var ins = instance_create_layer(obj_mc.x,obj_mc.y,"Instances",obj_red);
					ins.image_blend = c_blue;
				}
		}
		instance_destroy();	
		
	}
	repeat(10){
		instance_create_layer(x,y,"Instances",obj_res);
	}
}
instance_destroy();
