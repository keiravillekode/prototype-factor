USING: isogram tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ t } [ "" isogram? ] unit-test

STOP-HERE

{ t } [ "isogram" isogram? ] unit-test
{ f } [ "eleven" isogram? ] unit-test
{ f } [ "zzyzx" isogram? ] unit-test
{ t } [ "subdermatoglyphic" isogram? ] unit-test
{ f } [ "Alphabet" isogram? ] unit-test
{ f } [ "alphAbet" isogram? ] unit-test
{ t } [ "thumbscrew-japingly" isogram? ] unit-test
{ f } [ "thumbscrew-jappingly" isogram? ] unit-test
{ t } [ "six-year-old" isogram? ] unit-test
{ t } [ "Emily Jung Schwartzkopf" isogram? ] unit-test
{ f } [ "accentor" isogram? ] unit-test
{ f } [ "angola" isogram? ] unit-test
{ f } [ "up-to-date" isogram? ] unit-test
