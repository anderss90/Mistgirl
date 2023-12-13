/// @description Insert description here
// You can write your code in this editor

var left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var right = keyboard_check(ord("D")) || keyboard_check(vk_right);
var jump = keyboard_check(vk_space);
var dirInput = right-left


//sprite mirroring
if (abs(dirInput) > 0) image_xscale = dirInput;	

//sideways motion
if (grounded)
{
	if (dirInput = 0)
	{
		//phy_speed_x = lerp(phy_speed_x,0,1);
		physics_apply_force(x,y,-1*groundFrictionForce*phy_speed_x,y);
	}
	else 
	{
		if (phy_speed_x*dirInput < walkSpeed)
		{
			if (dirInput == 1) // going right
			{
				phy_speed_x = clamp(phy_speed_x + dirInput*walkSpeed,-99999,walkSpeed);
			}
			else if (dirInput == -1)
			{
				phy_speed_x = clamp(phy_speed_x + dirInput*walkSpeed,-walkSpeed,99999);
			}
		}
	}
}
else
{
	physics_apply_force(x,y,dirInput*airForce,0);
}


if (jump && grounded)
{
	phy_speed_y =-jumpSpeed;
}

phy_rotation = 0;


//set new object
var mouseOverObj = collision_circle(mouse_x,mouse_y,10,obj_metal,false,true);
if (mouseOverObj != noone)
{
	//clear selected tags
	//for (var i = 0; i < instance_number(obj_metal); i++;)
	//{
	//	var temp = instance_find(obj_metal,i);
	//	temp.isSelected = false;
	//}
	if (currentMetalObject != noone) currentMetalObject.isSelected = false;
	mouseOverObj.isSelected = true;
	currentMetalObject = mouseOverObj;
}

//apply push/pull
if (currentMetalObject != noone)
{
	var distCoeff = 0.02;
	var distX = currentMetalObject.x-x;
	var distY = currentMetalObject.y-y;
	var dist = sqrt(sqr(distX) + sqr(distY));
	var forceX = (distX * pushForce) / (dist);
	var forceY = (distY * pushForce) / (dist);
	forceX /= ((dist)*distCoeff);
	forceY /= ((dist)*distCoeff);
	if (mouse_check_button(mb_left))
	{
		physics_apply_force(x,y,-forceX,-forceY);
		with currentMetalObject physics_apply_force(x,y,forceX,forceY);
	}
	else if (mouse_check_button(mb_right))
	{
		physics_apply_force(x,y,forceX,forceY);
		with currentMetalObject physics_apply_force(x,y,-forceX,-forceY);
	}
}











