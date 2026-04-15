USING: word-count kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ H{ { "word" 1 } } } [ "word" count-words ] unit-test

STOP-HERE

{ H{ { "each" 1 } { "of" 1 } { "one" 1 } } } [ "one of each" count-words ] unit-test
{ H{ { "blue" 1 } { "fish" 4 } { "one" 1 } { "red" 1 } { "two" 1 } } } [ "one fish two fish red fish blue fish" count-words ] unit-test
{ H{ { "one" 1 } { "three" 1 } { "two" 1 } } } [ "one,two,three" count-words ] unit-test
{ H{ { "one" 1 } { "three" 1 } { "two" 1 } } } [ "one,\ntwo,\nthree" count-words ] unit-test
{ H{ { "as" 1 } { "car" 1 } { "carpet" 1 } { "java" 1 } { "javascript" 1 } } } [ "car: carpet as java: javascript!!&@$%^&" count-words ] unit-test
{ H{ { "1" 1 } { "2" 1 } { "testing" 2 } } } [ "testing, 1, 2 testing" count-words ] unit-test
{ H{ { "go" 3 } { "stop" 2 } } } [ "go Go GO Stop stop" count-words ] unit-test
{ H{ { "cry" 1 } { "don't" 2 } { "first" 1 } { "getting" 1 } { "it" 1 } { "laugh" 1 } { "then" 1 } { "you're" 1 } } } [ "'First: don't laugh. Then: don't cry. You're getting it.'" count-words ] unit-test
{ H{ { "and" 1 } { "between" 1 } { "can't" 1 } { "joe" 1 } { "large" 2 } { "tell" 1 } } } [ "Joe can't tell between 'large' and large." count-words ] unit-test
{ H{ { "a" 1 } { "and" 1 } { "app" 1 } { "apple" 1 } { "between" 1 } { "can't" 1 } { "joe" 1 } { "tell" 1 } } } [ "Joe can't tell between app, apple and a." count-words ] unit-test
{ H{ { "multiple" 1 } { "whitespaces" 1 } } } [ " multiple   whitespaces" count-words ] unit-test
{ H{ { "one" 1 } { "three" 1 } { "two" 1 } } } [ ",\n,one,\n ,two \n 'three'" count-words ] unit-test
{ H{ { "can" 1 } { "can't" 2 } } } [ "can, can't, 'can't'" count-words ] unit-test
