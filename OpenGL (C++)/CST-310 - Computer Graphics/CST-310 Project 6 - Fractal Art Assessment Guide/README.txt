The goal of the project was to begin the examination of fractals and their production
by rule lists. This was the first project on the subject matter, beginning the study
and project for Project 7. This project was to create the fractal tree on which a
fractal forest would be made on top of it at each node of the fractal in Project 7.
The code of this project produces the fractal from a ruleset defined optionally by
either "fractal.txt" or "fractal1.txt." It was found during working on Project 7
that there was a problem with how the fractal was produced in this project. One of the
fractals, for instance, creates a flower-like pattern in this project, but it actually
should create a more ongoing, tree-like shape. This was corrected in Project 7, though
the code from the original project submission remains here. More details about the
project can be found in the documentation of the Word document.

The project was originally run on a virtual machine of Ubuntu 18.04. The following was
taken from the original project submission's README file, detailing how to compile and
run the code.

Libraries Used: GL, GLUT.

Step 1- Download the zip folder and extract the folder

Step 2- Open the command console and navigate to the extracted 
    folder

Step 3- "g++ Project6.cpp -o project6 -lGL -lglut" in 
    command line to compile the program

Step 4- "./project6" in the command console to run the compiled program

Step 5- (Optional) Change the name of the fractal ruleset to "fractal1.txt" by changing
	the filename string at line 120 in the input() function of the code.

Controls:
    E - Exit

- Michael, 5/7/21