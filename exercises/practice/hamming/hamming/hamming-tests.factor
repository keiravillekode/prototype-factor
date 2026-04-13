USING: hamming tools.test ;

{ 0 } [ "" "" distance ] unit-test
{ 0 } [ "A" "A" distance ] unit-test
{ 1 } [ "G" "T" distance ] unit-test
{ 0 } [ "GGACTGAAATCTG" "GGACTGAAATCTG" distance ] unit-test
{ 9 } [ "GGACGGATTCTG" "AGGACGGATTCT" distance ] unit-test
[ "AATG" "AAA" distance ] [ "strands must be of equal length" = ] must-fail-with
[ "ATA" "AGTG" distance ] [ "strands must be of equal length" = ] must-fail-with
[ "" "G" distance ] [ "strands must be of equal length" = ] must-fail-with
[ "G" "" distance ] [ "strands must be of equal length" = ] must-fail-with
