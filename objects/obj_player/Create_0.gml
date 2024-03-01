/// @description Insert description here
// You can write your code in this editor

event_inherited();

//input
input = {
	left: 0,
	right: 0,
	jump: 0,
	coin: 0,
	dirX: 0,
};

//movement and physics
walkSpeed = 3;
maxAirStrafeSpeed = walkSpeed
grounded = false;
groundFrictionForce = 900;
airForce = 1000;
jumpImpulse = 400;
jumpCount = 0;
frictionForce = new Vector2(0,0);
resultForce = new Vector2(0,0); 
currentJumpCD = 0;
jumpCD = 30;

//push and pull
currentMetalObject = noone;
drawMetalIndicator = true;
pushForce = 2000;
maxPushForce = 1500;
alloForce = new Vector2(); 


// lifecycle
hp = 10;










