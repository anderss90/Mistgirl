//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;


// Color Overlay Fragment Shader
void main()
{
	vec4 textureColor = texture2D( gm_BaseTexture, v_vTexcoord);
	vec4 myTint = vec4(0.0, 0.0, 0.3, 1.0*textureColor.a);
    gl_FragColor = textureColor + myTint;
}

//void main()
//{
//    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
//}
