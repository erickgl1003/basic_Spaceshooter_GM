marg = 32;
global.ene = 0;
global.dif = 0;
if(room = rm_game){
	totrep = 3;
	repeat(totrep){
		xx= room_width+marg;
		yy = irandom_range(marg,room_height-marg);
		instance_create_layer(xx,yy, "Instances", obj_en);
	}
	alarm[0] = 60;
}