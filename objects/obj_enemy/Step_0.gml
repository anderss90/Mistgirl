/// @description Insert description here
// You can write your code in this editor

if (!collision_line(x,y,obj_player.x,obj_player.y,obj_collide,false,true))
{
	if (nCoins > 0 && coinCurrentCD <= 0)
	{
		var coinDir = point_direction(x,y,obj_player.x,obj_player.y);
		var coinSpawnDist = 50;
		with (instance_create_layer(x+lengthdir_x(coinSpawnDist,coinDir),y+lengthdir_y(coinSpawnDist,coinDir),layer,obj_coin))
		{
			isFriendly = false;
			phy_speed_x = lengthdir_x(coinSpeed/4,coinDir);
			phy_speed_y = lengthdir_y(coinSpeed/4,coinDir);
		}
		coinCurrentCD = coinCD;
		nCoins--;
	}
	coinCurrentCD = clamp(coinCurrentCD - 1,0,60);		
}














