USING: two-fer kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ "One for you, one for me." } [ f two-fer ] unit-test

STOP-HERE

{ "One for Alice, one for me." } [ "Alice" two-fer ] unit-test
{ "One for Bob, one for me." } [ "Bob" two-fer ] unit-test
