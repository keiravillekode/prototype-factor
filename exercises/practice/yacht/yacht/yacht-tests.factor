USING: yacht kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ 50 } [ { 5 5 5 5 5 } "yacht" score ] unit-test

STOP-HERE

{ 0 } [ { 1 3 3 2 5 } "yacht" score ] unit-test
{ 3 } [ { 1 1 1 3 5 } "ones" score ] unit-test
{ 3 } [ { 3 1 1 5 1 } "ones" score ] unit-test
{ 0 } [ { 4 3 6 5 5 } "ones" score ] unit-test
{ 2 } [ { 2 3 4 5 6 } "twos" score ] unit-test
{ 8 } [ { 1 4 1 4 1 } "fours" score ] unit-test
{ 15 } [ { 3 3 3 3 3 } "threes" score ] unit-test
{ 0 } [ { 3 3 3 3 3 } "fives" score ] unit-test
{ 10 } [ { 1 5 3 5 3 } "fives" score ] unit-test
{ 6 } [ { 2 3 4 5 6 } "sixes" score ] unit-test
{ 16 } [ { 2 2 4 4 4 } "full house" score ] unit-test
{ 19 } [ { 5 3 3 5 3 } "full house" score ] unit-test
{ 0 } [ { 2 2 4 4 5 } "full house" score ] unit-test
{ 0 } [ { 1 4 4 4 4 } "full house" score ] unit-test
{ 0 } [ { 2 2 2 2 2 } "full house" score ] unit-test
{ 24 } [ { 6 6 4 6 6 } "four of a kind" score ] unit-test
{ 12 } [ { 3 3 3 3 3 } "four of a kind" score ] unit-test
{ 0 } [ { 3 3 3 5 5 } "four of a kind" score ] unit-test
{ 30 } [ { 3 5 4 1 2 } "little straight" score ] unit-test
{ 0 } [ { 1 2 3 4 5 } "big straight" score ] unit-test
{ 0 } [ { 1 1 2 3 4 } "little straight" score ] unit-test
{ 0 } [ { 1 2 3 4 6 } "little straight" score ] unit-test
{ 0 } [ { 1 1 3 4 5 } "little straight" score ] unit-test
{ 30 } [ { 4 6 2 5 3 } "big straight" score ] unit-test
{ 0 } [ { 6 5 4 3 2 } "little straight" score ] unit-test
{ 0 } [ { 6 5 4 3 1 } "big straight" score ] unit-test
{ 23 } [ { 3 3 5 6 6 } "choice" score ] unit-test
{ 10 } [ { 2 2 2 2 2 } "choice" score ] unit-test
