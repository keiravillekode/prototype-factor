# About

[Factor][factor] is a dynamic, stack-based, concatenative programming language created by Slava Pestov.
In Factor, programs are built by composing words that operate on a data stack -- there are no named variables in typical code, and functions (called "words") are composed simply by writing them next to each other.

Factor stands out for several reasons:

- **Concatenative**: programs are sequences of words that transform the data stack. Function composition is just concatenation.
- **Fully compiled**: despite being dynamic and interactive, Factor compiles all code to native machine code for strong performance.
- **Rich standard library**: Factor ships with vocabularies for HTTP servers, databases, JSON, XML, regular expressions, concurrency, UI toolkits, and much more.
- **Interactive development**: the bundled listener (REPL) and IDE let you explore, test, and modify code live.
- **Extensible syntax**: parsing words let you extend the language's syntax from within Factor itself.

Factor draws inspiration from Forth, Lisp, and Smalltalk.
It runs on Linux, macOS, and Windows.

Find the community on the [Factor Discord][discord] and [GitHub][github].

[factor]: https://factorcode.org/
[discord]: https://discord.gg/QxJYZx3QDf
[github]: https://github.com/factor/factor
