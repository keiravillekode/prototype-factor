USING: rotational-cipher kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ "a" } [ "a" 0 rotate ] unit-test

STOP-HERE

{ "b" } [ "a" 1 rotate ] unit-test
{ "a" } [ "a" 26 rotate ] unit-test
{ "z" } [ "m" 13 rotate ] unit-test
{ "a" } [ "n" 13 rotate ] unit-test
{ "TRL" } [ "OMG" 5 rotate ] unit-test
{ "T R L" } [ "O M G" 5 rotate ] unit-test
{ "Xiwxmrk 1 2 3 xiwxmrk" } [ "Testing 1 2 3 testing" 4 rotate ] unit-test
{ "Gzo'n zvo, Bmviyhv!" } [ "Let's eat, Grandma!" 21 rotate ] unit-test
{ "Gur dhvpx oebja sbk whzcf bire gur ynml qbt." } [ "The quick brown fox jumps over the lazy dog." 13 rotate ] unit-test
{ "/09:@NZAM[`nzam{" } [ "/09:@AMNZ[`amnz{" 13 rotate ] unit-test
