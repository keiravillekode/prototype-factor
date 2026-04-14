USING: difference-of-squares kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ 1 } [ 1 square-of-sum ] unit-test

STOP-HERE

{ 225 } [ 5 square-of-sum ] unit-test
{ 25502500 } [ 100 square-of-sum ] unit-test
{ 1 } [ 1 sum-of-squares ] unit-test
{ 55 } [ 5 sum-of-squares ] unit-test
{ 338350 } [ 100 sum-of-squares ] unit-test
{ 0 } [ 1 difference-of-squares ] unit-test
{ 170 } [ 5 difference-of-squares ] unit-test
{ 25164150 } [ 100 difference-of-squares ] unit-test
