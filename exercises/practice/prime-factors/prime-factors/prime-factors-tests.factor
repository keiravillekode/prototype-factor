USING: prime-factors kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ {  } } [ 1 factors ] unit-test

STOP-HERE

{ { 2 } } [ 2 factors ] unit-test
{ { 3 } } [ 3 factors ] unit-test
{ { 3 3 } } [ 9 factors ] unit-test
{ { 2 2 } } [ 4 factors ] unit-test
{ { 2 2 2 } } [ 8 factors ] unit-test
{ { 3 3 3 } } [ 27 factors ] unit-test
{ { 5 5 5 5 } } [ 625 factors ] unit-test
{ { 2 3 } } [ 6 factors ] unit-test
{ { 2 2 3 } } [ 12 factors ] unit-test
{ { 5 17 23 461 } } [ 901255 factors ] unit-test
{ { 11 9539 894119 } } [ 93819012551 factors ] unit-test
