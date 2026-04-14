USING: affine-cipher kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ "xbt" } [ "yes" 5 7 encode ] unit-test

STOP-HERE

{ "fu" } [ "no" 15 18 encode ] unit-test
{ "lvz" } [ "OMG" 21 3 encode ] unit-test
{ "hjp" } [ "O M G" 25 47 encode ] unit-test
{ "rzcwa gnxzc dgt" } [ "mindblowingly" 11 15 encode ] unit-test
{ "jqgjc rw123 jqgjc rw" } [ "Testing,1 2 3, testing." 3 4 encode ] unit-test
{ "iynia fdqfb ifje" } [ "Truth is fiction." 5 17 encode ] unit-test
{ "swxtj npvyk lruol iejdc blaxk swxmh qzglf" } [ "The quick brown fox jumps over the lazy dog." 17 33 encode ] unit-test
[ "This is a test." 6 17 encode ] [ "a and m must be coprime." = ] must-fail-with
{ "exercism" } [ "tytgn fjr" 3 7 decode ] unit-test
{ "anobstacleisoftenasteppingstone" } [ "qdwju nqcro muwhn odqun oppmd aunwd o" 19 16 decode ] unit-test
{ "testing123testing" } [ "odpoz ub123 odpoz ub" 25 7 decode ] unit-test
{ "thequickbrownfoxjumpsoverthelazydog" } [ "swxtj npvyk lruol iejdc blaxk swxmh qzglf" 17 33 decode ] unit-test
{ "thequickbrownfoxjumpsoverthelazydog" } [ "swxtjnpvyklruoliejdcblaxkswxmhqzglf" 17 33 decode ] unit-test
{ "jollygreengiant" } [ "vszzm    cly   yd cg    qdp" 15 16 decode ] unit-test
[ "Test" 13 5 decode ] [ "a and m must be coprime." = ] must-fail-with
{ "09maz nmazn" } [ "/09:@AMNZ[`amnz{" 25 12 encode ] unit-test
