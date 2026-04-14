USING: armstrong-numbers tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ t } [ 0 armstrong-number? ] unit-test

STOP-HERE

{ t } [ 5 armstrong-number? ] unit-test
{ f } [ 10 armstrong-number? ] unit-test
{ t } [ 153 armstrong-number? ] unit-test
{ f } [ 100 armstrong-number? ] unit-test
{ t } [ 9474 armstrong-number? ] unit-test
{ f } [ 9475 armstrong-number? ] unit-test
{ t } [ 9926315 armstrong-number? ] unit-test
{ f } [ 9926314 armstrong-number? ] unit-test
