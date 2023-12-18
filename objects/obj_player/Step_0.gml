/// @description Insert description here
// You can write your code in this editor


if (input.coin && nCoins > 0 && coinCurrentCD <= 0)
{
	var coinDir = point_direction(x,y,mouse_x,mouse_y);
	var coinSpawnDist = 50;
	with (instance_create_layer(x+lengthdir_x(coinSpawnDist,coinDir),y+lengthdir_y(coinSpawnDist,coinDir),layer,obj_coin))
	{
		phy_speed_x = lengthdir_x(coinSpeed,coinDir);
		phy_speed_y = lengthdir_y(coinSpeed,coinDir);
	}
	coinCurrentCD = coinCD;
	nCoins--;
}
coinCurrentCD = clamp(coinCurrentCD - 1,0,60);
//show_debug_message("coinCD: "+string(coinCurrentCD));
	



//set new object
var mouseOverObj = collision_point(mouse_x,mouse_y,obj_metal,true,true);
if (mouseOverObj != noone)
{
	if (currentMetalObject != noone && instance_exists(currentMetalObject))
	{
		currentMetalObject.isSelected = false;
	}
	mouseOverObj.isSelected = true;
	currentMetalObject = mouseOverObj;
}

//apply push/pull
if (currentMetalObject != noone && instance_exists(currentMetalObject))
{
	var distCoeff = 0.01;
	var posDiff = new Vector2(currentMetalObject.x-x,currentMetalObject.y-y);
	var dist = posDiff.GetLen();
	posDiff.Normalize();
	var force = new Vector2(posDiff.x*pushForce,posDiff.y*pushForce);
	force.Multiply(1/(distCoeff*dist));
	var scaleDown = maxPushForce /force.GetLen();
	if (scaleDown < 1)
	{
		force.Multiply(scaleDown);
	}
	
	
	if (mouse_check_button(mb_left))
	{
		//physics_apply_force(x,y,-forceX,-forceY);
		alloForce.x = -force.x;
		alloForce.y = -force.y;
		with currentMetalObject physics_apply_force(x,y,force.x,force.y);
	}
	else if (mouse_check_button(mb_right))
	{
		if (currentMetalObject.object_index == obj_coin	)
		{
			currentMetalObject.isSticking = false;
			currentMetalObject.isFriendly = true;
		}
		else {
			alloForce.x = force.x;
			alloForce.y = force.y;
		}
		with currentMetalObject physics_apply_force(x,y,-force.x,-force.y);
	}
	else
	{
		alloForce.Reset();
	}
}
else 
{
	alloForce.Reset()
}











