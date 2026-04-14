USING: nth-prime kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ 2 } [ 1 nth-prime ] unit-test

STOP-HERE

{ 3 } [ 2 nth-prime ] unit-test
{ 13 } [ 6 nth-prime ] unit-test
{ 104743 } [ 10001 nth-prime ] unit-test
[ 0 nth-prime ] [ "there is no zeroth prime" = ] must-fail-with
{ 17 } [ 7 nth-prime ] unit-test
{ 821647 } [ 65537 nth-prime ] unit-test
