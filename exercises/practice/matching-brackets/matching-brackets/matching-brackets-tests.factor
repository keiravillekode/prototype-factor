USING: matching-brackets kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ t } [ "[]" paired? ] unit-test

STOP-HERE

{ t } [ "" paired? ] unit-test
{ f } [ "[[" paired? ] unit-test
{ f } [ "}{" paired? ] unit-test
{ f } [ "{]" paired? ] unit-test
{ t } [ "{ }" paired? ] unit-test
{ f } [ "{[])" paired? ] unit-test
{ t } [ "{[]}" paired? ] unit-test
{ t } [ "{}[]" paired? ] unit-test
{ t } [ "([{}({}[])])" paired? ] unit-test
{ f } [ "{[)][]}" paired? ] unit-test
{ f } [ "([{])" paired? ] unit-test
{ f } [ "[({]})" paired? ] unit-test
{ f } [ "[({}])" paired? ] unit-test
{ f } [ "{}[" paired? ] unit-test
{ f } [ "[]]" paired? ] unit-test
{ f } [ ")()" paired? ] unit-test
{ f } [ "{)()" paired? ] unit-test
{ t } [ "(((185 + 223.85) * 15) - 543)/2" paired? ] unit-test
{ t } [ "\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)" paired? ] unit-test
