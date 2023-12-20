/// @description Insert description here
// You can write your code in this editor

show_debug_message("Coin collision that should not happen");


with other
{	
	if (other.speed > other.damageThreshold)
	{
		hp--;
	}
	if (hp <= 0)
	{
		instance_destroy();
		other.speed = 0;

	}
}
instance_destroy();


















