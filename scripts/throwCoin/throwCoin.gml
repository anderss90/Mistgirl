// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function throwCoin(throwSpeed,throwDirection,friendly)
{
	//show_debug_message("throwCoin");
	if (object_get_parent(object_index) != obj_mistborn) return;
	//show_debug_message("is Mistborn");
	if (nCoins > 0 && coinCurrentCD <= 0)
	{
		var coinSpawnDist = 50;
		with (instance_create_layer(x+lengthdir_x(coinSpawnDist,throwDirection),y+lengthdir_y(coinSpawnDist,throwDirection),layer,obj_coin))
		{
			isFriendly = friendly;
			spd.x = lengthdir_x(throwSpeed,throwDirection);
			spd.y = lengthdir_y(throwSpeed,throwDirection);
		}
		coinCurrentCD = coinCD;
		nCoins--;
	}	
}