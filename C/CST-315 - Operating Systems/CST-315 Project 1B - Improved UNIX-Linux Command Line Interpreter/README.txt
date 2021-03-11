The following line must be inserted into the system's Linux terminal in order for the code to properly run.:
     sudo apt-get install libreadline-dev

For Code::Blocks, the following line must be inserted into the Project->Build Options...->Linker settings->Other linker options:.:
     -pthread -lreadline

The goal of this project was to expound upon the previous Linux command-
line interpreter simulation. The expansion involved allowing the terminal
to work with ";"-separated, concurrent commands. The Word document 
describes the project to a greater and more-detailed extent.

- Michael, 5/13/20