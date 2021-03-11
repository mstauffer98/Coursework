For Code::Blocks, the following line must be inserted into the Project->Build Options...->Linker settings->Other linker options:.:
     -pthread

The project was designed to examine the nature of deadlock avoidance
among a set of threads. A set of five pthreads was set and each
attempted to gain access to a shared buffer resource. Timers were
set and if a thread did not acquire access to the resource, it was
deemed "starved." This cycle continue for as long as the program 
argument allocated, in seconds. The program is described in greater
detail in the Word or Markdown document as well as the code itself.

- Michael, 5/13/20