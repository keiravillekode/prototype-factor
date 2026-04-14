USING: say kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ "zero" } [ 0 say ] unit-test

STOP-HERE

{ "one" } [ 1 say ] unit-test
{ "fourteen" } [ 14 say ] unit-test
{ "twenty" } [ 20 say ] unit-test
{ "twenty-two" } [ 22 say ] unit-test
{ "thirty" } [ 30 say ] unit-test
{ "ninety-nine" } [ 99 say ] unit-test
{ "one hundred" } [ 100 say ] unit-test
{ "one hundred twenty-three" } [ 123 say ] unit-test
{ "two hundred" } [ 200 say ] unit-test
{ "nine hundred ninety-nine" } [ 999 say ] unit-test
{ "one thousand" } [ 1000 say ] unit-test
{ "one thousand two hundred thirty-four" } [ 1234 say ] unit-test
{ "one million" } [ 1000000 say ] unit-test
{ "one million two thousand three hundred forty-five" } [ 1002345 say ] unit-test
{ "one billion" } [ 1000000000 say ] unit-test
{ "nine hundred eighty-seven billion six hundred fifty-four million three hundred twenty-one thousand one hundred twenty-three" } [ 987654321123 say ] unit-test
[ -1 say ] [ "input out of range" = ] must-fail-with
[ 1000000000000 say ] [ "input out of range" = ] must-fail-with
{ "nineteen billion eleven million sixteen thousand thirteen" } [ 19011016013 say ] unit-test
{ "eight hundred twelve billion seventy thousand seventeen" } [ 812000070017 say ] unit-test
{ "sixty billion ten million fifteen thousand eighteen" } [ 60010015018 say ] unit-test
