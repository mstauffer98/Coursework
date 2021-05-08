The goal of the project was to introduce OpenGL and computer graphics with demonstrating the illustration of a
Sierpinski Gasket. The base of the program was given to us, which drew the Sierpinski Gasket in two dimensions,
being a triangle. Our challenge was to create the Sierpinski Gasket in three dimensions, being a tetrahedron.
More about the project can be found in the documentation of the Word document, including screenshots and code
analysis.

Adapted from the Readme file of the project's original submission, the following was written with regard to how
to run the code.:

The code was written and run using Visual Studio. To be able to run the code, the proper OpenGL libraries must
be integrated for the Visual Studio project. The directions for how to do this are illustrated at the URL
https://content.byui.edu/file/2315e65e-a34a-48d3-814d-4175a2b74ed5/1/intro/165-opengl-visualStudio2017.html
under the section "Configure Visual Studio for OpenGL." In simple summary, once in Visual Studio, look at the top
bar under "Tools"->"NuGet Package Manager" and click the selection "Package Manager Console." In the console
window at the bottom of the IDE display, enter the following command: "Install-Package nupengl.core." Once the
console states "Successfully installed 'nupengl.core...," the code should run smoothly. The code will request the
user for the number of dimensions within which the Sierpinski Gasket should be made. Of course, 2 and 3 will be
acceptable inputs, outputting the results for the triangular Sierpinski Gasket or the tetrahedral Sierpinski
Gasket, respectively.

- Michael, 5/7/21