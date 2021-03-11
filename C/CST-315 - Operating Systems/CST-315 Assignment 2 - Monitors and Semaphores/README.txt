The goal of the assignment was to demonstrate a procedure involving
multiple processes with both monitors and semaphores. The procedure
scenario was a simple subtraction and addition problem, simplifying
the Producer-Consumer project code. The scenario involved adding and
subtracting an integer buffer item between a set of adding processes
and a set of subtracting processes. In the "Monitors" program, the
two sets were regulated by a POSIX semaphore as a simple on-and-off
switch. In the "Semaphores" program, two POSIX semaphores were used
to acknowledge the value of the buffer item, regulating whether the
value could be added and subtracted. A more detailed explanation is
written in the Word document.

- Michael