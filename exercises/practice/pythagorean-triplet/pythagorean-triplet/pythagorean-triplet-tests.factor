USING: pythagorean-triplet kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ { { 3 4 5 } } } [ 12 triplets-with-sum ] unit-test

STOP-HERE

{ { { 27 36 45 } } } [ 108 triplets-with-sum ] unit-test
{ { { 200 375 425 } } } [ 1000 triplets-with-sum ] unit-test
{ {  } } [ 1001 triplets-with-sum ] unit-test
{ { { 9 40 41 } { 15 36 39 } } } [ 90 triplets-with-sum ] unit-test
{ { { 40 399 401 } { 56 390 394 } { 105 360 375 } { 120 350 370 } { 140 336 364 } { 168 315 357 } { 210 280 350 } { 240 252 348 } } } [ 840 triplets-with-sum ] unit-test
{ { { 1200 14375 14425 } { 1875 14000 14125 } { 5000 12000 13000 } { 6000 11250 12750 } { 7500 10000 12500 } } } [ 30000 triplets-with-sum ] unit-test
{ { { 68145 71672 98897 } } } [ 238714 triplets-with-sum ] unit-test
