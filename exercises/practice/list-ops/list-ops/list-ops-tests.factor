USING: list-ops kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ { } } [ { } { } list-append ] unit-test

STOP-HERE

{ { 1 2 3 4 } } [ { } { 1 2 3 4 } list-append ] unit-test
{ { 1 2 3 4 } } [ { 1 2 3 4 } { } list-append ] unit-test
{ { 1 2 2 3 4 5 } } [ { 1 2 } { 2 3 4 5 } list-append ] unit-test
{ { } } [ { } list-concat ] unit-test
{ { 1 2 3 4 5 6 } } [ { { 1 2 } { 3 } { } { 4 5 6 } } list-concat ] unit-test
{ { { 1 } { 2 } { 3 } { } { 4 5 6 } } } [ { { { 1 } { 2 } } { { 3 } } { { } } { { 4 5 6 } } } list-concat ] unit-test
{ { } } [ { } [ odd? ] select ] unit-test
{ { 1 3 5 } } [ { 1 2 3 5 } [ odd? ] select ] unit-test
{ 0 } [ { } list-length ] unit-test
{ 4 } [ { 1 2 3 4 } list-length ] unit-test
{ { } } [ { } [ 1 + ] collect ] unit-test
{ { 2 4 6 8 } } [ { 1 3 5 7 } [ 1 + ] collect ] unit-test
{ 2 } [ { } 2 [ * ] foldl ] unit-test
{ 15 } [ { 1 2 3 4 } 5 [ + ] foldl ] unit-test
{ 64 } [ { 1 2 3 4 } 24 [ swap / ] foldl ] unit-test
{ 2 } [ { } 2 [ * ] foldr ] unit-test
{ 15 } [ { 1 2 3 4 } 5 [ + ] foldr ] unit-test
{ 9 } [ { 1 2 3 4 } 24 [ swap / ] foldr ] unit-test
{ { } } [ { } list-reverse ] unit-test
{ { 7 5 3 1 } } [ { 1 3 5 7 } list-reverse ] unit-test
{ { { 4 5 6 } { } { 3 } { 1 2 } } } [ { { 1 2 } { 3 } { } { 4 5 6 } } list-reverse ] unit-test
