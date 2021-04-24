This project was the first in a series of projects in building a programming language
compiler. This project encapsulated the lexical analyzer, also known as the lexer,
of the compiler. The program sought to take in the source code from the file
"SourceCode.gcupl" and analyze whether each token - each string - in the source code
was valid in the grammar of the language. It checked this by taking in the
characters one by one for each token character and determining whether it was a
valid token by the last character of the string. This project starts from the
main "Source.cpp" script and processes each token in the DFA class. The whole lexer
is based upon a deterministic finite automaton, which can be analyzed in the
documentation as well as the ".jff" file, opening it with the program "JFLAP." More
details about the project can be found in the documentation in the Word document.

- Michael, 4/23/21