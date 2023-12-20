/// @description Insert description here
// You can write your code in this editor


//sideways motion

var airStrafeForce = new Vector2(0,0);
if (grounded)
{
	if (abs(phy_speed_x) > 0.1)
	{	
		frictionForce.x = groundFrictionForce*-sign(phy_speed_x);
	}
	else 
	{
		//frictionForce.x = groundFrictionForce*-sign(phy_speed_x);
		frictionForce.x = 0;
		phy_speed_x = 0;	
	}
	var canWalk = abs(alloForce.x) <= groundFrictionForce;
	if (phy_speed_x*input.dirX < walkSpeed && canWalk)
	{
		if (input.dirX == 1) // going right
		{
			phy_speed_x = clamp(phy_speed_x + input.dirX*walkSpeed,-99999,walkSpeed);
		}
		else if (input.dirX == -1)
		{
			phy_speed_x = clamp(phy_speed_x + input.dirX*walkSpeed,-walkSpeed,99999);
		}
	}
}

else if (!grounded)
{
	if (abs(phy_speed_x) < maxAirStrafeSpeed)
	{
		airStrafeForce.x = input.dirX*airForce;
	}
	frictionForce.x = 0;
	jumpCount = 0;
}

resultForce.Add(alloForce);
resultForce.Add(frictionForce);
resultForce.Add(airStrafeForce);

//resultForce.x = alloForce.x + frictionForce.x;
//resultForce.y = alloForce.y + frictionForce.y;
physics_apply_force(x,y,resultForce.x,resultForce.y);


//jumping
if (input.jump && grounded && jumpCount == 0)
{
	//phy_speed_y =-jumpSpeed;
	jumpCount++;
	//show_debug_message("Jump #"+string(jumpCount));
	physics_apply_impulse(x,y,0,-jumpImpulse);
}

phy_rotation = 0;


//sprite mirroring
if (abs(input.dirX) > 0) image_xscale = input.dirX;	

//set walking sprite when moving
if (abs(phy_speed_x) > 0.1 && grounded && input.dirX !=0)
{
	sprite_index = spr_walking;
	image_speed = 1;
}

else 
{
	sprite_index = spr_walking;
	image_index = 0;
	image_speed = 0;
}
if phy_speed_y > 1
{
	sprite_index = spr_boi_falling;
}
	



//check if inside goal
var coeff = 1.1
if (place_meeting(x-sprite_width/coeff,y,obj_goal) && place_meeting(x+sprite_width/coeff,y,obj_goal))
{
	if room_exists(room_next(room))
	{
	    room_goto_next();
	}
	else {
		room_goto_previous();
	}
}










