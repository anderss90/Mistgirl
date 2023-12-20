/// @description Insert description here
// You can write your code in this editor
show_debug_message("Coin collision that should not happen");
var stickDist = sprite_width/2;
//show_debug_message("Coinspeed when colliding: " + string(phy_speed));
if (!isSticking && speed > 2)
{
	isSticking = true;
	
	//var normSpeedX = phy_speed_x/phy_speed;
	//var normSpeedY = phy_speed_y/phy_speed;
	
	//x +=normSpeedX*stickDist;
	//y +=normSpeedY*stickDist;
	
	speed = 0;
	isFriendly = true;
}













