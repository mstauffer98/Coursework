The goal of the project was to examine the concept of advanced shaders in OpenGL. This
is a continuation of Project 9, utilizing the camera controls of the previous project.
We were supposed to apply three different shader maps to three different geometric
figures. The shader maps were applied as .jpg files. The "Camera.h" file was used for a
camera object in the scene. The .vs, .frag, "Mesh.h," "model_unoptimized.h," and
"Shader.h" files dealt with the shaders of the objects in the scene and the mesh 3D
model ("globe-sphere.obj") used for the sphere. A video demonstration of the project can
be found in the "Loom Video Link.txt" file. More details about the project can be found
in the documentation of the Word document.

The project was originally run on a virtual machine of Ubuntu 18.04. The following was
taken from the original project submission's README file, detailing how to compile and
run the code.:

Libraries Used: GL, GLEW, GLFW, SOIL, and assimp.

Step 1 - Download the .zip folder and extract the files.

Step 2 - Open the command console and navigate to the extracted 
         folder.

Step 3 - "g++ Project9.cpp -o Project9Output -lGL -lGLEW -lglfw -lSOIL -lassimp" in 
         command line to compile the program.

Step 4 - "./Project9Output" in the command console to run the compiled program.

Controls:
    Right Arrow - Right in the X-Axis
    Left Arrow - Left in the X-Axis
    Up Arrow - Up in the Y-Axis
    Down Arrow - Down in the Y-Axis
    Shift+Up Arrow - Forward in the Z-Axis
    Shift+Down Arrow - Backward in the Z-Axis
    Control+Down Arrow - +2.0 Degrees in Camera Pitch
    Control+Up Arrow - -2.0 Degrees in Camera Pitch
    Control+Right Arrow - +2.0 Degrees in Camera Yaw
    Control+Left Arrow - -2.0 Degrees in Camera Yaw
    < - +2.0 Degrees in Camera Roll
    > - -2.0 Degrees in Camera Roll
    r/R - Reset view of camera
    e/E - Exit program
    Escape - Exit program/Close program window

- Michael, 5/8/21