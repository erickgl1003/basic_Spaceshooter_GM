randomize();

n = 2;

for(i = 1;i < n+1; i++){
	ind[i] = "spr_en" + string(i);	
}
r = irandom_range(1,n);

sprite_index = asset_get_index(ind[r]);

direction = 0;

if(sprite_index = spr_en2){
		speed = -random_range(2,4);
}
else{
	speed = -random_range(1,2);
}
speed -= global.dif*0.02;

sp = speed;