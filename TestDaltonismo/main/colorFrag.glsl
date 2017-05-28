#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

varying vec3 fNormal;
varying vec4 vertColor;

vec4 getInputColor()
{
  return vec4(fNormal, 1.0); // Just a test
}

vec4 toGrayscale(in vec4 color)
{
  float average = (color.r + color.g + color.b) / 3.0;
  return vec4(average, average, average, 1.0);
}

void main() {
  gl_FragColor = vertColor;
}