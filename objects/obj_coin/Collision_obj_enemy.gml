/// @description Insert description here
// You can write your code in this editor




with other
{	
	if (other.phy_speed > other.damageThreshold)
	{
		hp--;
	}
	if (hp <= 0)
	{
		instance_destroy();
		other.phy_speed_x = 0;
		other.phy_speed_y = 0;
	}
	
}
instance_destroy();


















