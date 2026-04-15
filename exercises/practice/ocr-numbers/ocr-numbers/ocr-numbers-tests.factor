USING: ocr-numbers kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ "0" } [ { " _ " "| |" "|_|" "   " } convert ] unit-test

STOP-HERE

{ "1" } [ { "   " "  |" "  |" "   " } convert ] unit-test
{ "?" } [ { "   " "  _" "  |" "   " } convert ] unit-test
[ { " _ " "| |" "   " } convert ] [ "Number of input lines is not a multiple of four" = ] must-fail-with
[ { "    " "   |" "   |" "    " } convert ] [ "Number of input columns is not a multiple of three" = ] must-fail-with
{ "110101100" } [ { "       _     _        _  _ " "  |  || |  || |  |  || || |" "  |  ||_|  ||_|  |  ||_||_|" "                           " } convert ] unit-test
{ "11?10?1?0" } [ { "       _     _           _ " "  |  || |  || |     || || |" "  |  | _|  ||_|  |  ||_||_|" "                           " } convert ] unit-test
{ "2" } [ { " _ " " _|" "|_ " "   " } convert ] unit-test
{ "3" } [ { " _ " " _|" " _|" "   " } convert ] unit-test
{ "4" } [ { "   " "|_|" "  |" "   " } convert ] unit-test
{ "5" } [ { " _ " "|_ " " _|" "   " } convert ] unit-test
{ "6" } [ { " _ " "|_ " "|_|" "   " } convert ] unit-test
{ "7" } [ { " _ " "  |" "  |" "   " } convert ] unit-test
{ "8" } [ { " _ " "|_|" "|_|" "   " } convert ] unit-test
{ "9" } [ { " _ " "|_|" " _|" "   " } convert ] unit-test
{ "1234567890" } [ { "    _  _     _  _  _  _  _  _ " "  | _| _||_||_ |_   ||_||_|| |" "  ||_  _|  | _||_|  ||_| _||_|" "                              " } convert ] unit-test
{ "123,456,789" } [ { "    _  _ " "  | _| _|" "  ||_  _|" "         " "    _  _ " "|_||_ |_ " "  | _||_|" "         " " _  _  _ " "  ||_||_|" "  ||_| _|" "         " } convert ] unit-test
