USING: square-root tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ 1 } [ 1 square-root ] unit-test

STOP-HERE

{ 2 } [ 4 square-root ] unit-test
{ 5 } [ 25 square-root ] unit-test
{ 9 } [ 81 square-root ] unit-test
{ 14 } [ 196 square-root ] unit-test
{ 255 } [ 65025 square-root ] unit-test
