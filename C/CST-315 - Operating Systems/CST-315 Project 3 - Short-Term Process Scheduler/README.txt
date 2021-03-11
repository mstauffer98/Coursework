The following line must be inserted into the system's Linux terminal in order for the code to properly run.:
     sudo apt-get install libreadline-dev

For Code::Blocks, the following line must be inserted into the Project->Build Options...->Linker settings->Other linker options:.:
     -pthread -lreadline

The goal of the assignment was to adapt the previous
simulated terminal project of Project 1/1B to utilize
a short-term process scheduler. The instructions for
the assignment were rather vague, so the results of the
scheduling do not simulate a scheduler in an incredibly
similar sense. We were allowed to picked the scheduling
procedure, so I picked the simplest, that is, First-Come-
First-Serve (FCFS) for the sake of time. This is implicit
within the previous project already, but new printed
lines read out the scheduling process to demonstrate the
process more explicitly. Confusion also led to there being
a pthreads, which simulate "processors," which is detailed
more within the Word document. See the Word document for
more information, in general, about the project.

- Michael, 5/13/20
