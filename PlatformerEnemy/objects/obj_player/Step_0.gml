/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("R")){
	room_restart()
	
}

if keyboard_check_pressed(ord("A")){
	L_pressed = true
	L_hold = true
	
}
if keyboard_check_released(ord("A")){
	L_released = true
	L_hold = false
}
if keyboard_check_pressed(ord("D")){
	R_pressed = true
	R_hold = true

}
if keyboard_check_released(ord("D")){
	R_released = true
	R_hold = false
}
if keyboard_check_pressed(vk_space){
	action_1_pressed = true
	action_1_hold = true

}
if keyboard_check_released(vk_space){
	action_1_released = true
	action_1_hold = false
}

if collision_circle(x,y,12,obj_foe,false,true){

	room_restart()

}

// Inherit the parent event
event_inherited();

L_pressed = false
L_released = false
R_pressed = false
R_released = false
action_1_pressed = false

	
	
	
	if collision_circle(x,y,30,obj_collectableFire,false,true){
		powerType = "Fire"
		instance_destroy(obj_collectableFire)
	}
	
	if collision_circle(x,y,30,obj_collectableLightning,false,true){
		powerType = "Lightning"
		instance_destroy(obj_collectableLightning)
	}
	
	if collision_circle(x,y,30,obj_collectableIce,false,true){
		powerType = "Ice"
		instance_destroy(obj_collectableIce)
	}


/*if powerType = "Ice"{
		jump_max= 8	
	}
	
if powerType = "Lightning"{
		grav_amt= 1	
	}
	*/
	
if collision_circle(x,y+sprite_height,4,obj_foe,false,true) {
		var enemy = instance_nearest(x,y,obj_foe)
		instance_destroy(enemy)
	}
	
if collision_circle(x,y+sprite_height,20,obi_collectable,false,true) {
		var collect = instance_nearest(x,y,obi_collectable)
		myR = collect.colorR
		myG = collect.colorG
		myB = collect.colorB
		instance_destroy(collect)
	}
	
	
if keyboard_check_pressed(vk_shift){
	if powerType = "Fire"{
		instance_create_depth(x,y,0,obj_Fireball)
	
		//instance_destroy(obj_Fireball)
	}
	if powerType = "Lightning"{
		instance_create_depth(x,y,0,obj_IceBucket)
	
		//instance_destroy(obj_Fireball)
	}
	if powerType = "Ice"{
		instance_create_depth(x,y,0,obj_LightningStrike)
	
		//instance_destroy(obj_Fireball)
	}
	else
	{
	}
	
}

if y > room_height+100 {
	room_restart()

}

if L_hold {
	image_xscale = -2
}else{
	image_xscale = 2
}

