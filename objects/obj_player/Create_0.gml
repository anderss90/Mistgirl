/// @description Insert description here
// You can write your code in this editor


//input
input = {
	left: 0,
	right: 0,
	jump: 0,
	coin: 0,
	dirX: 0,
};

//movement and physics
walkSpeed = 2.5;
jumpSpeed = 6;
maxAirStrafeSpeed = walkSpeed
grounded = false;
groundFrictionForce = 900;
airForce = 1000;
jumpImpulse = 300;
frictionForce = new Vector2(0,0);
resultForce = new Vector2(0,0); 
jumpCount = 0;

//push and pull
currentMetalObject = noone;
drawMetalIndicator = true;
pushForce = 2000;
maxPushForce = 10000000;
alloForce = new Vector2(); 

//coins
nCoins = 15;
coinCD = 10;
coinCurrentCD = 0;

// lifecycle
hp = 10;










