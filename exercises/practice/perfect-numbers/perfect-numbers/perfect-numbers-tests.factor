USING: perfect-numbers kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ "perfect" } [ 6 classify ] unit-test

STOP-HERE

{ "perfect" } [ 28 classify ] unit-test
{ "perfect" } [ 33550336 classify ] unit-test
{ "abundant" } [ 12 classify ] unit-test
{ "abundant" } [ 30 classify ] unit-test
{ "abundant" } [ 33550335 classify ] unit-test
{ "abundant" } [ 196 classify ] unit-test
{ "deficient" } [ 2 classify ] unit-test
{ "deficient" } [ 4 classify ] unit-test
{ "deficient" } [ 32 classify ] unit-test
{ "deficient" } [ 33550337 classify ] unit-test
{ "deficient" } [ 1 classify ] unit-test
[ 0 classify ] [ "Classification is only possible for positive integers." = ] must-fail-with
[ -1 classify ] [ "Classification is only possible for positive integers." = ] must-fail-with
{ "deficient" } [ 8796027459974431 classify ] unit-test
