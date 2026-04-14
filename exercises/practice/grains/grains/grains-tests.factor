USING: grains kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ 1 } [ 1 square ] unit-test

STOP-HERE

{ 2 } [ 2 square ] unit-test
{ 4 } [ 3 square ] unit-test
{ 8 } [ 4 square ] unit-test
{ 32768 } [ 16 square ] unit-test
{ 2147483648 } [ 32 square ] unit-test
{ 9223372036854775808 } [ 64 square ] unit-test
[ 0 square ] [ "square must be between 1 and 64" = ] must-fail-with
[ -1 square ] [ "square must be between 1 and 64" = ] must-fail-with
[ 65 square ] [ "square must be between 1 and 64" = ] must-fail-with
{ 18446744073709551615 } [ total ] unit-test
