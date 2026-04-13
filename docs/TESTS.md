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

[tools-test]: https://docs.factorcode.org/content/vocab-tools.test.html
