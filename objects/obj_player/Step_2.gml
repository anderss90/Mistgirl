/// @description Insert description here
// You can write your code in this editor



//set walking sprite when moving
if (abs(phy_speed_x) > 0.1 && grounded)
{
	sprite_index = spr_walking;
	image_speed = 1;
}
else 
{
	sprite_index = spr_walking;
	image_index = 0;
	image_speed = 0;
}
if phy_speed_y > 1
{
	sprite_index = spr_boi_falling;
}
	



//check if inside goal
var coeff = 1.1
if (place_meeting(x-sprite_width/coeff,y,obj_goal) && place_meeting(x+sprite_width/coeff,y,obj_goal))
{
	if room_exists(room_next(room))
	{
	    room_goto_next();
	}
	else {
		room_goto_previous();
	}
}










