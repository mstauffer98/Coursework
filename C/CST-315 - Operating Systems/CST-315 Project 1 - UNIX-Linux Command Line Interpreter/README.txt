The following line must be inserted into the system's Linux terminal in order for the code to properly run.:
     sudo apt-get install libreadline-dev

For Code::Blocks, the following line must be inserted into the Project->Build Options...->Linker settings->Other linker options:.:
     -lreadline

The goal of this project was to create a Linux command
terminal simulation through a C-based shell. The code
works in two modes: a batch mode that processes numerous
commands at a time and an interactive (or shell) mode
which runs commands like a typical terminal; one at a
time. Note that the piped commands do not work with this
submission. I figured out later that it did not work,
but I figured I would leave the original submission as
is here. The Word document describes the project to a
greater and more-detailed extent.

- Michael, 5/13/20