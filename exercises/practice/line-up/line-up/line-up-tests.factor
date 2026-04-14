USING: line-up tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ "Gianna, you are the 4th customer we serve today. Thank you!" } [ "Gianna" 4 format ] unit-test

STOP-HERE

{ "Maarten, you are the 9th customer we serve today. Thank you!" } [ "Maarten" 9 format ] unit-test
{ "Petronila, you are the 5th customer we serve today. Thank you!" } [ "Petronila" 5 format ] unit-test
{ "Attakullakulla, you are the 6th customer we serve today. Thank you!" } [ "Attakullakulla" 6 format ] unit-test
{ "Kate, you are the 7th customer we serve today. Thank you!" } [ "Kate" 7 format ] unit-test
{ "Maximiliano, you are the 8th customer we serve today. Thank you!" } [ "Maximiliano" 8 format ] unit-test
{ "Mary, you are the 1st customer we serve today. Thank you!" } [ "Mary" 1 format ] unit-test
{ "Haruto, you are the 2nd customer we serve today. Thank you!" } [ "Haruto" 2 format ] unit-test
{ "Henriette, you are the 3rd customer we serve today. Thank you!" } [ "Henriette" 3 format ] unit-test
{ "Alvarez, you are the 10th customer we serve today. Thank you!" } [ "Alvarez" 10 format ] unit-test
{ "Jacqueline, you are the 11th customer we serve today. Thank you!" } [ "Jacqueline" 11 format ] unit-test
{ "Juan, you are the 12th customer we serve today. Thank you!" } [ "Juan" 12 format ] unit-test
{ "Patricia, you are the 13th customer we serve today. Thank you!" } [ "Patricia" 13 format ] unit-test
{ "Washi, you are the 21st customer we serve today. Thank you!" } [ "Washi" 21 format ] unit-test
{ "Nayra, you are the 62nd customer we serve today. Thank you!" } [ "Nayra" 62 format ] unit-test
{ "John, you are the 100th customer we serve today. Thank you!" } [ "John" 100 format ] unit-test
{ "Zeinab, you are the 101st customer we serve today. Thank you!" } [ "Zeinab" 101 format ] unit-test
{ "Knud, you are the 112th customer we serve today. Thank you!" } [ "Knud" 112 format ] unit-test
{ "Yma, you are the 123rd customer we serve today. Thank you!" } [ "Yma" 123 format ] unit-test
