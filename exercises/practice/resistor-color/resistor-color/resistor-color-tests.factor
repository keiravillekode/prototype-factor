USING: resistor-color kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ 0 } [ "black" color-code ] unit-test

STOP-HERE

{ 9 } [ "white" color-code ] unit-test
{ 3 } [ "orange" color-code ] unit-test
{ { "black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white" } } [ colors ] unit-test
