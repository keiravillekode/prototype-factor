USING: hamming tools.test ;

{ 0 } [ "" ""                            distance ] unit-test
{ 0 } [ "A" "A"                          distance ] unit-test
{ 1 } [ "G" "T"                          distance ] unit-test
{ 0 } [ "GGACTGAAATCTG" "GGACTGAAATCTG"  distance ] unit-test
{ 9 } [ "GGACGGATTCTG" "AGGACGGATTCT"    distance ] unit-test

[ "AATG" "AAA" distance ] must-fail
[ "ATA" "AGTG" distance ] must-fail
[ "" "G"        distance ] must-fail
[ "G" ""        distance ] must-fail
