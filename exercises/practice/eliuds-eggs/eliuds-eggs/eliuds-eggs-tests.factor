USING: eliuds-eggs tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ 0 } [ 0 egg-count ] unit-test

STOP-HERE

{ 1 } [ 16 egg-count ] unit-test
{ 4 } [ 89 egg-count ] unit-test
{ 13 } [ 2000000000 egg-count ] unit-test
