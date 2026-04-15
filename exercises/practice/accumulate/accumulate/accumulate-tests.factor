USING: accumulate math unicode kernel tools.test lexer ;
EXCLUDE: sequences => accumulate ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ { } } [ { } [ dup * ] accumulate ] unit-test

STOP-HERE

{ { 1 4 9 } } [ { 1 2 3 } [ dup * ] accumulate ] unit-test
{ { "HELLO" "WORLD" } } [ { "Hello" "world" } [ >upper ] accumulate ] unit-test
{ { "eht" "kciuq" "nworb" "xof" "cte" } } [ { "the" "quick" "brown" "fox" "etc" } [ reverse ] accumulate ] unit-test
{ { { "a1" "a2" "a3" } { "b1" "b2" "b3" } { "c1" "c2" "c3" } } } [ { "a" "b" "c" } [ [ swap append ] curry { "1" "2" "3" } swap accumulate ] accumulate ] unit-test
