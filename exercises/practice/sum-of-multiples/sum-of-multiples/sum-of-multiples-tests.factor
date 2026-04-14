USING: sum-of-multiples tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ 0 } [ { 3 5 } 1 sum-of-multiples ] unit-test

STOP-HERE

{ 3 } [ { 3 5 } 4 sum-of-multiples ] unit-test
{ 9 } [ { 3 } 7 sum-of-multiples ] unit-test
{ 23 } [ { 3 5 } 10 sum-of-multiples ] unit-test
{ 2318 } [ { 3 5 } 100 sum-of-multiples ] unit-test
{ 233168 } [ { 3 5 } 1000 sum-of-multiples ] unit-test
{ 51 } [ { 7 13 17 } 20 sum-of-multiples ] unit-test
{ 30 } [ { 4 6 } 15 sum-of-multiples ] unit-test
{ 4419 } [ { 5 6 8 } 150 sum-of-multiples ] unit-test
{ 275 } [ { 5 25 } 51 sum-of-multiples ] unit-test
{ 2203160 } [ { 43 47 } 10000 sum-of-multiples ] unit-test
{ 4950 } [ { 1 } 100 sum-of-multiples ] unit-test
{ 0 } [ {  } 10000 sum-of-multiples ] unit-test
{ 0 } [ { 0 } 1 sum-of-multiples ] unit-test
{ 3 } [ { 3 0 } 4 sum-of-multiples ] unit-test
{ 39614537 } [ { 2 3 5 7 11 } 10000 sum-of-multiples ] unit-test
