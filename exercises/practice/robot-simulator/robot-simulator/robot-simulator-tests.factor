USING: robot-simulator kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ { 0 0 "east" } } [ 0 0 "north" <robot> "R" move ] unit-test

STOP-HERE

{ { 0 0 "south" } } [ 0 0 "east" <robot> "R" move ] unit-test
{ { 0 0 "west" } } [ 0 0 "south" <robot> "R" move ] unit-test
{ { 0 0 "north" } } [ 0 0 "west" <robot> "R" move ] unit-test
{ { 0 0 "west" } } [ 0 0 "north" <robot> "L" move ] unit-test
{ { 0 0 "south" } } [ 0 0 "west" <robot> "L" move ] unit-test
{ { 0 0 "east" } } [ 0 0 "south" <robot> "L" move ] unit-test
{ { 0 0 "north" } } [ 0 0 "east" <robot> "L" move ] unit-test
{ { 0 1 "north" } } [ 0 0 "north" <robot> "A" move ] unit-test
{ { 0 -1 "south" } } [ 0 0 "south" <robot> "A" move ] unit-test
{ { 1 0 "east" } } [ 0 0 "east" <robot> "A" move ] unit-test
{ { -1 0 "west" } } [ 0 0 "west" <robot> "A" move ] unit-test
{ { 9 4 "west" } } [ 7 3 "north" <robot> "RAALAL" move ] unit-test
{ { -4 1 "west" } } [ 0 0 "north" <robot> "LAAARALA" move ] unit-test
{ { -3 -8 "south" } } [ 2 -7 "east" <robot> "RRAAAAALA" move ] unit-test
{ { 11 5 "north" } } [ 8 4 "south" <robot> "LAAARRRALLLL" move ] unit-test
