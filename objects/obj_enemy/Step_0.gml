/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (!collision_line(x,y,obj_player.x,obj_player.y,obj_collide,false,true))
{
	var coinDir = point_direction(x,y,obj_player.x,obj_player.y);
	throwCoin(coinSpeed,coinDir,false);
}

if hp < 0 instance_destroy();














