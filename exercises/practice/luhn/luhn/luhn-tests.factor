USING: luhn kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ f } [ "1" valid? ] unit-test

STOP-HERE

{ f } [ "0" valid? ] unit-test
{ t } [ "059" valid? ] unit-test
{ t } [ "59" valid? ] unit-test
{ t } [ "055 444 285" valid? ] unit-test
{ f } [ "055 444 286" valid? ] unit-test
{ f } [ "8273 1232 7352 0569" valid? ] unit-test
{ f } [ "1 2345 6789 1234 5678 9012" valid? ] unit-test
{ f } [ "1 2345 6789 1234 5678 9013" valid? ] unit-test
{ t } [ "095 245 88" valid? ] unit-test
{ t } [ "234 567 891 234" valid? ] unit-test
{ f } [ "059a" valid? ] unit-test
{ f } [ "055-444-285" valid? ] unit-test
{ f } [ "055# 444$ 285" valid? ] unit-test
{ f } [ " 0" valid? ] unit-test
{ t } [ "0000 0" valid? ] unit-test
{ t } [ "091" valid? ] unit-test
{ t } [ "9999999999 9999999999 9999999999 9999999999" valid? ] unit-test
{ t } [ "109" valid? ] unit-test
{ f } [ "055b 444 285" valid? ] unit-test
{ f } [ ":9" valid? ] unit-test
{ f } [ "59%59" valid? ] unit-test
