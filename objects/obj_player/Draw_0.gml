/// @description Insert description here
// You can write your code in this editor

//draw_sprite(spr_cloak,0,x,y);
draw_self()
draw_set_color(c_black)
draw_rectangle(0,0,300,200,false);
draw_set_color(c_white)
draw_text(10,10,"Coins: "+string(nCoins));
draw_text(10,30,"HP: "+string(hp));
draw_text(10,50,"phy_speed: "+string(phy_speed_x)+" , "+string(phy_speed_y));
draw_text(10,70,"alloForce: "+string(alloForce.x)+" , "+string(alloForce.y));
draw_text(10,90,"frictionForce: "+string(frictionForce.x)+" , "+string(frictionForce.y));
draw_text(10,110,"resultForce: "+string(resultForce.x)+" , "+string(resultForce.y));
//draw current metal line

if (drawMetalIndicator && currentMetalObject != noone && instance_exists(currentMetalObject))
{
	if (abs(alloForce.GetLen()) > 0)
	{
		draw_set_alpha(0.5);
		
	}
	else 
	{
		draw_set_alpha(0);
	}	
	draw_set_color(c_navy);
	//draw_line_width(x,y,currentMetalObject.x,currentMetalObject.y,2);
	draw_arrow(x,y,x+alloForce.x/10,y+alloForce.y/10,10);
	draw_set_alpha(1);
	draw_set_color(c_white);
}













