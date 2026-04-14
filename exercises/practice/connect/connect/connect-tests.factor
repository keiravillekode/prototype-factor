USING: connect kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ "" } [ { ". . . . ." " . . . . ." "  . . . . ." "   . . . . ." "    . . . . ." } winner ] unit-test

STOP-HERE

{ "X" } [ { "X" } winner ] unit-test
{ "O" } [ { "O" } winner ] unit-test
{ "" } [ { "O O O X" " X . . X" "  X . . X" "   X O O O" } winner ] unit-test
{ "" } [ { "X O . ." " O X X X" "  O X O ." "   . O X ." "    X X O O" } winner ] unit-test
{ "" } [ { "X . . ." " . X O ." "  O . X O" "   . O . X" "    . . O ." } winner ] unit-test
{ "X" } [ { ". O . ." " O X X X" "  O X O ." "   X X O X" "    . O X ." } winner ] unit-test
{ "X" } [ { ". . X ." " X X . ." "  . X X X" "   O O O O" } winner ] unit-test
{ "X" } [ { ". . X X" " X X . ." "  . X X ." "   O O O O" } winner ] unit-test
{ "O" } [ { ". O . ." " O X X X" "  O O O ." "   X X O X" "    . O X ." } winner ] unit-test
{ "X" } [ { ". X X . ." " X . X . X" "  . X . X ." "   . X X . ." "    O O O O O" } winner ] unit-test
{ "X" } [ { "O X X X X X X X X" " O X O O O O O O O" "  O X O X X X X X O" "   O X O X O O O X O" "    O X O X X X O X O" "     O X O O O X O X O" "      O X X X X X O X O" "       O O O O O O O X O" "        X X X X X X X X O" } winner ] unit-test
