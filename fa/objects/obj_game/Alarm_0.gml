if(room != rm_game) exit;
global.ene++;
var totre = 3+floor(global.ene/10);
repeat(totre){
		xx= room_width+marg;
		yy = irandom_range(marg,room_height-marg);
		instance_create_layer(xx,yy, "Instances", obj_en);
}



if(60-global.dif < 20) {
	alarm[0] = 60-global.dif;
	global.dif += 2;
}
else {
	alarm[0] = 20;
}