/// @description Insert description here
// You can write your code in this editor

//gravity = isSticking ? 0 : 50;

if !isSticking spd.y +=coinGravity; // gravity

if (!isFriendly && spd.GetLen() < 1)
{
	isFriendly = true;
}

if isPulled
{
	var toPLayer = new Vector2(obj_player.x-x,obj_player.y-y);
	toPLayer.Normalize();
	
	spd.x = toPLayer.x * coinSpeed;
	spd.y = toPLayer.y * coinSpeed;
	if collision_line(x,y,obj_player.x,obj_player.y,obj_collide,false,false)
	{
		isPulled = false
	}
}


//move
move_and_collide(spd.x,spd.y,obj_collide,4,0,0,16,16);
//collide with walls and stuff
var bounceLoss = 0.4;
function test()
{
	show_debug_message("Testfunction");
}


if collision_circle(x+spd.x,y+spd.y,sprite_width/2,obj_collide,true,true)
{
	//either collision
	show_debug_message("Coin speed"+string(spd.GetLen()));
	if spd.GetLen() > stickThreshold
	{
		spd.setZero();
		isSticking = true;
	}
	else 
	{
		if place_meeting(x+spd.x,y,obj_collide) spd.x = -spd.x * bounceLoss;
		if place_meeting(x,y+spd.y,obj_collide) spd.y = -spd.y * bounceLoss;
	}
}
//collisions with mistborn
var mistBornHit = instance_place(x,y,obj_mistborn);
if mistBornHit != noone
{
	show_debug_message("Mistborn coin collision");
	with mistBornHit
	{
		show_debug_message("coin speed"+string(other.spd.GetLen()));
		if (other.spd.GetLen() > other.damageThreshold && !other.isPulled)
		{
			hp--;	
		}
		else 
		{
			nCoins++;				
		}
	}
	instance_destroy();
}









