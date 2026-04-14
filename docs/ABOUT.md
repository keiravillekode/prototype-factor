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
Its object system is influenced by the [Common Lisp Object System][clos].
It runs on Linux, macOS, and Windows.

## Glossary

- **Word**: a function that takes its arguments from, and returns values to, the data stack. All words must declare their stack effect (e.g. `( x y -- z )`).
- **Vocabulary**: a collection of words organized in a directory, like a module or library in other languages.
- **Stack**: a last-in-first-out data structure used for passing data between words. Factor's stack is the primary way data flows through a program.
- **Quotation**: a block of code enclosed in `[ ]` that can be passed around as a value and executed later -- similar to a lambda or closure.
- **Combinator**: a word that takes quotations as input and executes them in a particular pattern (e.g. `if`, `map`, `each`, `bi`, `tri`).

## Getting started

If you're new to Factor, start with the [Factor cookbook][cookbook] and [Your first program][first-program] in the official documentation.

Find the community on the [Factor Discord][discord] and [GitHub][github].

[factor]: https://factorcode.org/
[clos]: https://en.wikipedia.org/wiki/Common_Lisp_Object_System
[cookbook]: https://docs.factorcode.org/content/article-cookbook.html
[first-program]: https://docs.factorcode.org/content/article-first-program.html
[discord]: https://discord.gg/QxJYZx3QDf
[github]: https://github.com/factor/factor
