USING: palindrome-products kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ { 1 { { 1 1 } } } } [ 1 9 smallest ] unit-test

STOP-HERE

{ { 9 { { 1 9 } { 3 3 } } } } [ 1 9 largest ] unit-test
{ { 121 { { 11 11 } } } } [ 10 99 smallest ] unit-test
{ { 9009 { { 91 99 } } } } [ 10 99 largest ] unit-test
{ { 10201 { { 101 101 } } } } [ 100 999 smallest ] unit-test
{ { 906609 { { 913 993 } } } } [ 100 999 largest ] unit-test
{ { 1002001 { { 1001 1001 } } } } [ 1000 9999 smallest ] unit-test
{ { 99000099 { { 9901 9999 } } } } [ 1000 9999 largest ] unit-test
{ { f {  } } } [ 1002 1003 smallest ] unit-test
{ { f {  } } } [ 15 15 largest ] unit-test
[ 10000 1 smallest ] [ "min must be <= max" = ] must-fail-with
[ 2 1 largest ] [ "min must be <= max" = ] must-fail-with
{ { 10988901 { { 3297 3333 } } } } [ 3215 4000 smallest ] unit-test
{ { 50067176005 { { 223619 223895 } } } } [ 223617 244818 smallest ] unit-test
{ { 59842824895 { { 244445 244811 } } } } [ 223617 244818 largest ] unit-test
