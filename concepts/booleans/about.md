# About

## Booleans in Factor

True and false values in Factor are represented by the words `t` and `f`.
`f` is also Factor's singleton "false" value — it's a member of the class
`boolean`, which contains just `t` and `f`.

```factor
t .
! => t

f .
! => f
```

Factor treats `f` as the _only_ false value. Every other value — `0`, `""`,
`{ }`, and so on — is truthy. That is different from languages where "empty"
things are false; in Factor, even an empty string is true.

## Boolean operators

The three core boolean words live in the `kernel` vocabulary.

`and` takes two values and returns the first if it is `f`, otherwise the
second. When both inputs are booleans, it behaves as expected:

```factor
t t and .
! => t

t f and .
! => f
```

`or` takes two values and returns the first if it is truthy, otherwise the
second:

```factor
t t or .
! => t

f t or .
! => t
```

`not` inverts a boolean:

```factor
t not .
! => f

f not .
! => t
```

There is also `xor`, exclusive-or, which returns `t` exactly when one (not
both) of its inputs is truthy.

## Stack order

Because Factor is concatenative, boolean words consume their arguments from
the data stack. `a b and` reads as _push a, push b, apply `and`_. When
implementing a word that takes arguments in a particular order, remember
that the last argument pushed sits on top of the stack — you may need `swap`
to flip them before combining with `and`, `or`, or `not`.

## Short-circuit evaluation

Factor's `and` and `or` are ordinary words, not special forms: both
arguments are fully evaluated before the operator runs. If you need
short-circuit behaviour (evaluate the second argument only when necessary),
use the combinators `when`, `unless`, or `if` with quotations.

```factor
x-is-ok [ do-something ] unless
```
