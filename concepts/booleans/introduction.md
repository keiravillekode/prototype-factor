# Introduction

## Booleans in Factor

True and false are written as the words `t` and `f` in Factor. `f` is the
only falsy value in the language — every other value, including `0` and
empty strings, is truthy.

```factor
t .
! => t

f .
! => f
```

## Boolean operators

Three words in the `kernel` vocabulary cover the common cases:

- `and` — returns truthy if both inputs are truthy.
- `or`  — returns truthy if either input is truthy.
- `not` — inverts its argument.

```factor
t t and .    ! => t
t f and .    ! => f

f t or .     ! => t
f f or .     ! => f

t not .      ! => f
f not .      ! => t
```

Because Factor is concatenative, these words consume their arguments from
the data stack in order. If your arguments are on the stack in the "wrong"
order for a particular operator, use `swap` to flip them.
