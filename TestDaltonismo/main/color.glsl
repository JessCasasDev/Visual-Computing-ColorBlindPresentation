#ifdef GL_ES
precision highp float;
#endif

#define PROCESSING_TEXTURE_SHADER

// Texture shaders require these standard uniforms. The filter() function in the sketch 
// will pass everything that has been drawn on the screen via the 'texture' uniform. 
uniform sampler2D texture;
uniform vec2 texOffset;

varying vec4 vertColor;
varying vec4 vertTexCoord;

// Parameters

uniform float contrast;
uniform float saturation;
uniform float brightness;

/*
uniform float contrast   = 0.5;
uniform float saturation = 0.5;
uniform float brightness = 0.5;
*/


/*
** Contrast, saturation, brightness
** Code of this function is from TGM's shader pack
** http://irrlicht.sourceforge.net/phpBB2/viewtopic.php?t=21057
*/

// For all settings: 1.0 = 100% 0.5=50% 1.5 = 150%
vec3 ContrastSaturationBrightness(vec3 color, float brt, float sat, float con)
{
	// Increase or decrease theese values to adjust r, g and b color channels seperately
	const float AvgLumR = 1.0;
	const float AvgLumG = 1.0;
	const float AvgLumB = 1.0;
	
	const vec3 LumCoeff = vec3(0.2125, 0.7154, 0.0721);
	
	vec3 AvgLumin  = vec3(AvgLumR, AvgLumG, AvgLumB);
	vec3 brtColor  = color * brt;
	vec3 intensity = vec3(dot(brtColor, LumCoeff));
	vec3 satColor  = mix(intensity, brtColor, sat);
	vec3 conColor  = mix(AvgLumin, satColor, con);
	
	return conColor;
}

vec3 swapColorRed(vec3 color){
	// implementar aca el cambio adecuado seg�n el color recibido
	color.x = color.x + 0.8;
	color.y = color.y + 0.3;
	color.z = color.z + 0.3;
	return color;
}

vec3 swapColorGreen(vec3 color){
	// implementar aca el cambio adecuado seg�n el color recibido
	color.x = color.x + 0.3;
	color.y = color.y + 0.8;
	color.z = color.z + 0.3;
	return color;
}

void main(void)
{
	vec2 coord = vertTexCoord.st;

    // Get the color of the pixel at our fragment's coordinates
    vec4 pixel = texture2D( texture, coord );
	vec3 pixelColor = pixel.rgb;
	vec3 color;
	
	// Si el pixel es "rojo" (Esos rangos fueron sacados a ojo)
	if( pixelColor.x >= 55.0/255.0 && pixelColor.y <= 50.0/255.0 && pixelColor.z <= 50.0/255.0 ) {
	//
	//color = ContrastSaturationBrightness( pixelColor, brightness, saturation, contrast );
	color = swapColorRed(pixelColor);
	} else if(pixelColor.x <= 50.0/255.0 && pixelColor.y >= 55.0/255.0 && pixelColor.z <= 50.0/255.0) {
	color = swapColorGreen(pixelColor);
	} else {
	//Si no, dejarlo original
	color = pixelColor;
	}
	float alpha = 1.0;
	
	gl_FragColor= vec4( color, alpha );
}