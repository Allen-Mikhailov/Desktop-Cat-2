#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

out vec3 ourColor;
out vec2 TexCoord;

uniform int SpriteSheetSizeX; 
uniform int SpriteSheetSizeY; 

uniform int SpriteSizeX; 
uniform int SpriteSizeY; 

uniform int SpriteX; 
uniform int SpriteY; 

void main()
{
	gl_Position = vec4(aPos, 1.0);
	ourColor = aColor;
	TexCoord = vec2(
		(aTexCoord.x+SpriteX)*SpriteSizeX/SpriteSheetSizeX, 
		(aTexCoord.y+SpriteY)*SpriteSizeY/SpriteSheetSizeY
	);
}