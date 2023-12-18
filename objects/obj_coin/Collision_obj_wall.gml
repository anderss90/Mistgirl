/// @description Insert description here
// You can write your code in this editor

var stickDist = sprite_width/2;
//show_debug_message("Coinspeed when colliding: " + string(phy_speed));
if (!isSticking && phy_speed > 2)
{
	isSticking = true;
	
	var normSpeedX = phy_speed_x/phy_speed;
	var normSpeedY = phy_speed_y/phy_speed;
	phy_speed_x = 0;
	phy_speed_y = 0;
	//x +=normSpeedX*stickDist;
	//y +=normSpeedY*stickDist;
	isFriendly = true;
}













