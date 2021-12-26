#version 330 core
// layout (location = 0) - take POSITION from ATTRIBUTES of lightVAO
layout (location = 0) in vec3 aPos; // model coordinates (position in vertices)

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    gl_Position = projection * view * model * vec4(aPos, 1.0);
}
