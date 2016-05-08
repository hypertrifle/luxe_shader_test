uniform sampler2D tex0;
uniform sampler2D tex1;

varying vec2 tcoord;
varying vec2 normal;
varying vec4 color;



void main() {
	    gl_FragColor.rg = tcoord.xy;
}

