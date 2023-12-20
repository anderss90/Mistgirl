/// @description Insert description here
// You can write your code in this editor
show_debug_message("Coin collision that should not happen");
with other
{
	if (other.isFriendly) nCoins++;
	else if (other.speed > other.damageThreshold) hp--;
}

instance_destroy();















