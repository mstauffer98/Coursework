This project was a part of a series of projects designed to look into rendering an
OpenGL scene based on a photograph. Projects 2 and 3 are included in the documentation;
these were planning stages to this and the next project. Project 2 gave sample photos
of scenes which could be rendered in OpenGL, one of which our professor chose for the
project. Project 3 then dealt with how we would theoretically render the objects in the
selected image scene in OpenGL. Overall, this project, Project 4, dealt with actually
coding the OpenGL, trying to mimic the arrangement and color of objects in the scene of
the selected photograph. The code was based on coding activities from our course, though
most of the code is original to us. The movements of the camera, including "Camera.h,"
however, were specifically taken from example code in order to have easy navigation of
the scene. The other header files contained code for rendering different objects in the
scene. These scripts were split up to make the code neater. Each header file was written
by the person whose namesake was the file's title (To note, I did end up taking on a
considerable amount of work for the project as evident from my file.). More information
about the project can be found in the documentation of the Word document.

The project was originally run on a virtual machine of Ubuntu 18.04. The following was
taken from the original project submission's README file, detailing how to compile and
run the code.:

Libraries Used: GL, GLEW, SOIL, and glfw.

Step 1- Download the zip folder and extract the folder

Step 2- Open the command console and navigate to the extracted 
    folder

Step 3- "g++ Project4.cpp -o project4 -lGL -lGLEW -lSOIL -lglfw" in 
    command line to compile the program

Step 3- "./project4" in the command console to run the compiled program

Controls:
    W - Forward
    A - Left
    S - Back
    D - Right
    E - Exit
    Mouse - Look around.

- Michael, 5/7/21