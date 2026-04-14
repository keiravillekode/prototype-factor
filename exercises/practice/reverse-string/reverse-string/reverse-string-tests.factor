USING: reverse-string kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ "" } [ "" reverse-string ] unit-test

STOP-HERE

{ "tobor" } [ "robot" reverse-string ] unit-test
{ "nemaR" } [ "Ramen" reverse-string ] unit-test
{ "!yrgnuh m'I" } [ "I'm hungry!" reverse-string ] unit-test
{ "racecar" } [ "racecar" reverse-string ] unit-test
{ "reward" } [ "drawer" reverse-string ] unit-test
{ "猫子" } [ "子猫" reverse-string ] unit-test
