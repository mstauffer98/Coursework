This project was the third (and likely hardest) in a series of projects in building a
programming language compiler. This project encapsulated the semantic analyzer of the
compiler. The semantic analyzer seeks to both check whether the semantics of a source
code are correct as well as build an abstract syntax tree (AST) and symbol table out
of the parse tree. This project was the first in the series of building the compiler
when our professor allowed us to work in groups. My partner had worked on a compiler
using the parser generator GNU Bison. When we pulled our resources together, he gave
the indication that he had taken care of the type-checking for the semantic analyzer.
I tried to pull my code, which sought to build the AST and symbol table, into his, but
this ended up having to be scratched for the sake of time. Therefore, for this
submission, we submitted both work from my code and from his. Here is a description
from the README of the original submission.:

There are two directories of code for our submission of the
semantic analyzer. One - "Type Checking" - encompasses the
type checking aspects which were able to be done neatly with 
the properties of Bison. The other - "AST and Symbol Table" -
encompasses C++ code that worked out a method for building a
symbol table as well as an abstract syntax table for a source
code. The two collections of code were going to be concatenated
with a shell command in the Bison work, but the runtime of the
compiled work would not budge beyond a segmentation fault. As
it stands, our semantic analyzer is built in two parts, working
effectively independently.

There are several bugs which remain across the two codes. We eventually realized that
the Bison code did not actually do the type-checking. Therefore, we consolidated our
work into my code by the final compiler submission for the class. Some more details,
specifically, regarding my partner's portion of work can be found in the documentation
in the Word document.

- Michael, 4/24/21