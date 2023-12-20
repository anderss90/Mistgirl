// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Vector2(_x = 0, _y = 0) constructor
{
    x = _x;
    y = _y;

    static Add = function(_vec2)
    {
        x += _vec2.x;
        y += _vec2.y;
    },
	static Multiply = function(a)
	{
		x = x*a;
		y = y*a;
	},
	static GetLen = function()
	{
		return sqrt(sqr(x)+sqr(y));
	},
	static Normalize = function()
	{
		var len = GetLen()
		if (len == 0)
		{
			x = 0;
			y = 0;
		}
		else
		{
			x = x / len;
			y = y / len;
		}
	},
	static Reset = function()
	{
		x = 0;
		y = 0;
	},
	static setZero = function()
	{
		Reset();
	}
}