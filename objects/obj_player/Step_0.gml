/// @description Insert description here
// You can write your code in this editor

depth = -y;


camera_set_view_pos(view_camera[0],
x-(camera_get_view_height(view_camera[0])/2), 
y-(camera_get_view_height(view_camera[0])/2))


movement_speed = 5;
//if(keyboard_check(vk_right) or keyboard_check(vk_left) or keyboard_check(vk_up) or keyboard_check(vk_down)){
//	sprite_index = sp_manwalking}
//else{
//	sprite_index = sp_man
//	}

if keyboard_check(vk_right) { spd[0]=1; image_xscale *= -1; }
else if keyboard_check(vk_left) { spd[0]=-1; image_xscale *= 1;}
else {spd[0]=0}


if keyboard_check(vk_down) {spd[1]= 1}
else if keyboard_check(vk_up) {spd[1]= -1}
else {spd[1]=0}

if(spd[0] != 0 or spd[1] != 0){
	var mag = sqrt(spd[0]*spd[0]+spd[1]*spd[1])
	spd[0] = spd[0]/mag
	spd[1] = spd[1]/mag
}

spd[0]*=movement_speed
spd[1]*=movement_speed

x+=spd[0]
y+=spd[1]

	/*if(place_meeting(x, y, obj_water) or place_meeting(x, y, obj_wind_says_no)){
		x-=spd[0]
		spd[0] = 0
	}

	y+=spd[1]
	if(place_meeting(x, y, obj_water) or place_meeting(x, y, obj_wind_says_no)){
		y-=spd[1]
		spd[1] = 0
	}
