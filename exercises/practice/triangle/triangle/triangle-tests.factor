USING: triangle kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ t } [ 2 2 2 equilateral? ] unit-test

STOP-HERE

{ f } [ 2 3 2 equilateral? ] unit-test
{ f } [ 5 4 6 equilateral? ] unit-test
{ f } [ 0 0 0 equilateral? ] unit-test
{ t } [ 0.5 0.5 0.5 equilateral? ] unit-test
{ t } [ 3 4 4 isosceles? ] unit-test
{ t } [ 4 4 3 isosceles? ] unit-test
{ t } [ 4 3 4 isosceles? ] unit-test
{ t } [ 4 4 4 isosceles? ] unit-test
{ f } [ 2 3 4 isosceles? ] unit-test
{ f } [ 1 1 3 isosceles? ] unit-test
{ f } [ 1 3 1 isosceles? ] unit-test
{ f } [ 3 1 1 isosceles? ] unit-test
{ t } [ 0.5 0.4 0.5 isosceles? ] unit-test
{ t } [ 5 4 6 scalene? ] unit-test
{ f } [ 4 4 4 scalene? ] unit-test
{ f } [ 4 4 3 scalene? ] unit-test
{ f } [ 3 4 3 scalene? ] unit-test
{ f } [ 4 3 3 scalene? ] unit-test
{ f } [ 7 3 2 scalene? ] unit-test
{ t } [ 0.5 0.4 0.6 scalene? ] unit-test
