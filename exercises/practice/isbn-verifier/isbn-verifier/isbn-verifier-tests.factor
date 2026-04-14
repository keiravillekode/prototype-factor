USING: isbn-verifier kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ t } [ "3-598-21508-8" valid? ] unit-test

STOP-HERE

{ f } [ "3-598-21508-9" valid? ] unit-test
{ t } [ "3-598-21507-X" valid? ] unit-test
{ f } [ "3-598-21507-A" valid? ] unit-test
{ f } [ "4-598-21507-B" valid? ] unit-test
{ f } [ "3-598-P1581-X" valid? ] unit-test
{ f } [ "3-598-2X507-9" valid? ] unit-test
{ f } [ "3-598-21508-96" valid? ] unit-test
{ f } [ "3-598-2X507-5" valid? ] unit-test
{ t } [ "3598215088" valid? ] unit-test
{ t } [ "359821507X" valid? ] unit-test
{ f } [ "359821507" valid? ] unit-test
{ f } [ "3598215078X" valid? ] unit-test
{ f } [ "00" valid? ] unit-test
{ f } [ "3-598-21507" valid? ] unit-test
{ f } [ "3-598-21515-X" valid? ] unit-test
{ f } [ "" valid? ] unit-test
{ f } [ "134456729" valid? ] unit-test
{ f } [ "3132P34035" valid? ] unit-test
{ f } [ "3598P215088" valid? ] unit-test
{ f } [ "98245726788" valid? ] unit-test
