/// @description Insert description here
// You can write your code in this editor

grounded = collision_point(x,y+2+(sprite_height/2),obj_collide,true,true);
//grounded = place_meeting(x,y+1,obj_floor) or place_meeting(x,y+1,obj_collide);

input.left = keyboard_check(ord("A")) || keyboard_check(vk_left);
input.right = keyboard_check(ord("D")) || keyboard_check(vk_right);
input.jump = keyboard_check(vk_space);
input.dirX = input.right-input.left;
input.coin = keyboard_check(ord("E"));

alloForce.Reset();
frictionForce.Reset();
resultForce.Reset();











