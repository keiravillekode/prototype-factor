USING: leap kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ f } [ 2015 leap-year? ] unit-test

STOP-HERE

{ f } [ 1970 leap-year? ] unit-test
{ t } [ 1996 leap-year? ] unit-test
{ t } [ 1960 leap-year? ] unit-test
{ f } [ 2100 leap-year? ] unit-test
{ f } [ 1900 leap-year? ] unit-test
{ t } [ 2000 leap-year? ] unit-test
{ t } [ 2400 leap-year? ] unit-test
{ f } [ 1800 leap-year? ] unit-test
