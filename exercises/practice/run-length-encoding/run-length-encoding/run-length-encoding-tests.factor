USING: run-length-encoding kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ "" } [ "" encode ] unit-test

STOP-HERE

{ "XYZ" } [ "XYZ" encode ] unit-test
{ "2A3B4C" } [ "AABBBCCCC" encode ] unit-test
{ "12WB12W3B24WB" } [ "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB" encode ] unit-test
{ "2 hs2q q2w2 " } [ "  hsqq qww  " encode ] unit-test
{ "2a3b4c" } [ "aabbbcccc" encode ] unit-test
{ "" } [ "" decode ] unit-test
{ "XYZ" } [ "XYZ" decode ] unit-test
{ "AABBBCCCC" } [ "2A3B4C" decode ] unit-test
{ "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB" } [ "12WB12W3B24WB" decode ] unit-test
{ "  hsqq qww  " } [ "2 hs2q q2w2 " decode ] unit-test
{ "aabbbcccc" } [ "2a3b4c" decode ] unit-test
{ "zzz ZZ  zZ" } [ "zzz ZZ  zZ" encode decode ] unit-test
