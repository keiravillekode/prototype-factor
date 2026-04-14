USING: collatz-conjecture tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ 0 } [ 1 steps ] unit-test

STOP-HERE

{ 4 } [ 16 steps ] unit-test
{ 9 } [ 12 steps ] unit-test
{ 152 } [ 1000000 steps ] unit-test
[ 0 steps ] [ "Only positive integers are allowed" = ] must-fail-with
[ -15 steps ] [ "Only positive integers are allowed" = ] must-fail-with
