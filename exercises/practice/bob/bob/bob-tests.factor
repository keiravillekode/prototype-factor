USING: bob kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ "Whatever." } [ "Tom-ay-to, tom-aaaah-to." response ] unit-test

STOP-HERE

{ "Whoa, chill out!" } [ "WATCH OUT!" response ] unit-test
{ "Whoa, chill out!" } [ "FCECDFCAAB" response ] unit-test
{ "Sure." } [ "Does this cryogenic chamber make me look fat?" response ] unit-test
{ "Sure." } [ "You are, what, like 15?" response ] unit-test
{ "Sure." } [ "fffbbcbeab?" response ] unit-test
{ "Whatever." } [ "Hi there!" response ] unit-test
{ "Whatever." } [ "It's OK if you don't want to go work for NASA." response ] unit-test
{ "Calm down, I know what I'm doing!" } [ "WHAT'S GOING ON?" response ] unit-test
{ "Whoa, chill out!" } [ "1, 2, 3 GO!" response ] unit-test
{ "Whatever." } [ "1, 2, 3" response ] unit-test
{ "Sure." } [ "4?" response ] unit-test
{ "Whoa, chill out!" } [ "ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!" response ] unit-test
{ "Whoa, chill out!" } [ "I HATE THE DENTIST" response ] unit-test
{ "Whatever." } [ "Ending with ? means a question." response ] unit-test
{ "Sure." } [ ":) ?" response ] unit-test
{ "Sure." } [ "Wait! Hang on. Are you going to be OK?" response ] unit-test
{ "Fine. Be that way!" } [ "" response ] unit-test
{ "Fine. Be that way!" } [ "          " response ] unit-test
{ "Fine. Be that way!" } [ "\t\t\t\t\t\t\t\t\t\t" response ] unit-test
{ "Sure." } [ "\nDoes this cryogenic chamber make\n me look fat?" response ] unit-test
{ "Whatever." } [ "         hmmmmmmm..." response ] unit-test
{ "Sure." } [ "Okay if like my  spacebar  quite a bit?   " response ] unit-test
{ "Fine. Be that way!" } [ "\n\r \t" response ] unit-test
{ "Whatever." } [ "This is a statement ending with whitespace      " response ] unit-test
