The goal of this project was to set up the controls for and introduce the concepts
explored in Project 10. Project 9 introduced the concepts of advanced shaders in OpenGL,
including the mappings which would be fully examined and implemented in Project 10. The
main goal of Project 9 was to introduce a camera system which allows the camera to be
turned in different directions as controlled by the user. This included turning the
camera by degree in the pitch, roll, and yaw. There were two implementation possibilities
we were allowed to do for the project: one using the library GLUT and another with the
library GLEW. Originally, I had done the project with GLUT. However, GLEW has more innate
capabilities with the shaders involved with Project 10 and seemed to be the
more-recommended implementation. Therefore, I remade Project 9 with GLEW, and this was
the version that I submitted for Project 9 in the "Project9.cpp" code. However, I have
included the GLUT library implementation as well under the "GLUT Implementation Code"
folder for demonstration of my work. More details about the project can be found in the
documentation of the Word document.

The project was originally run on a virtual machine of Ubuntu 18.04. The following was
taken from the original project submission's README file, detailing how to compile and
run the code. (For the alternate implementation, change "Project9.cpp" to
"Project9_GLUT.cpp" and "Project9Output" to something like "Project9_GLUTOutput" in 
the command line commands of Steps 3 and 4.):

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