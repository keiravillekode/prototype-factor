# Tests

Factor exercises use the built-in [`tools.test`][tools-test] vocabulary for testing.

## Running tests

From the Factor listener, load and test your vocabulary:

```factor
"hello-world" test
```

This runs all tests defined in the exercise's `-tests.factor` file.

## Test syntax

Tests use the `unit-test` word:

```factor
{ expected-value } [ expression ] unit-test
```

`unit-test` runs the quotation `[ expression ]` starting with an empty stack and compares the result against the expected value using `=`.

For approximate floating-point comparison, `unit-test~` is used:

```factor
{ expected epsilon } [ expression ] unit-test~
```

For testing that code signals an error, `must-fail-with` is used:

```factor
[ expression ] [ error-predicate ] must-fail-with
```

## Solving exercises

Each exercise provides a stub solution file (e.g., `hello-world/hello-world.factor`) and a test file (e.g., `hello-world/hello-world-tests.factor`).
Edit the solution file until all tests pass.

## Working through tests one at a time

Most test files contain a `STOP-HERE` line after the first test.
When the file is loaded, `STOP-HERE` causes Factor to skip the remaining tests.

```factor
{ "1" } [ 1 convert ] unit-test

STOP-HERE

{ "Pling" } [ 3 convert ] unit-test
{ "Plang" } [ 5 convert ] unit-test
```

Once the first test passes, delete the `STOP-HERE` line (or move it further down) to reveal the next tests.
When all tests pass, remove `STOP-HERE` entirely.

## Concept exercises and `TASK:` markers

Concept exercises are broken into numbered tasks; the test runner reports
results grouped by task.
A test file flags which task each `unit-test` belongs to with a `TASK:`
marker line.
`TASK:` is defined at the top of the file as a parsing word that swallows
the rest of its line at parse time, so it is a no-op to Factor — only the
test runner inspects it.

```factor
USING: my-exercise kernel tools.test lexer ;

: TASK: ( -- ) lexer get [ text>> length ] keep line<< ; parsing

TASK: 1 first task label
{ ... } [ ... ] unit-test
{ ... } [ ... ] unit-test

TASK: 2 second task label
{ ... } [ ... ] unit-test
```

Every `unit-test` after a `TASK: N` belongs to task `N` until the next
`TASK:` marker.
The text after the number is a human label — it is ignored by the runner
but handy when reading the file.
Practice exercises don't use `TASK:`; only concept exercises need it.

[tools-test]: https://docs.factorcode.org/content/vocab-tools.test.html
