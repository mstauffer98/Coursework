This project was the final of a series of projects designed to look into rendering an
OpenGL scene based on a photograph. This was a continuation of Project 4 in which this
project was designed to implement more details and touch-up the project's scene.
Within this, we were supposed to incorporate meshes as a part of our project. The .obj
files were included into the scene for their respective objects, intended to replace
any respective vertex-only drawn figures in the scene with a more polished model. The
"model_unoptimized.h" file as well as the "model" .vs and .frag shader files dealt with
the rendering and shading of the mesh 3D models. The "Project4" .vs and .frag files
dealt with simple color shading, and the "Project5" .vs and .frag files dealt with
using image files as shades. More information about the project can be found in the
documentation of the Word document.

The project was originally run on a virtual machine of Ubuntu 18.04. The following was
taken from the original project submission's README file, detailing how to compile and
run the code. (One note would be that the mouse controls were removed for this project
for simplicity of the code. Our professor needed just about quite literally every line
of code commented for the final submission of our project. Given that we did not write
the mouse controls, we decided to remove them for the final submission for the sake of
simplicity for commenting.):

Libraries Used: GL, GLEW, SOIL, ASSIMP, and glfw.

Step 1- Download the zip folder and extract the folder

Step 2- Open the command console and navigate to the extracted 
    folder

Step 3- "g++ Project5.cpp -o project5 -lGL -lGLEW -lSOIL -lglfw" in 
    command line to compile the program

Step 3- "./project5" in the command console to run the compiled program

Controls:
    W - Forward
    A - Left
    S - Back
    D - Right
    E - Exit

- Michael, 5/7/21