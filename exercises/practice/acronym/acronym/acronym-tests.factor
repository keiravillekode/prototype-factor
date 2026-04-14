USING: acronym tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ "PNG" } [ "Portable Network Graphics" abbreviate ] unit-test

STOP-HERE

{ "ROR" } [ "Ruby on Rails" abbreviate ] unit-test
{ "FIFO" } [ "First In, First Out" abbreviate ] unit-test
{ "GIMP" } [ "GNU Image Manipulation Program" abbreviate ] unit-test
{ "CMOS" } [ "Complementary metal-oxide semiconductor" abbreviate ] unit-test
{ "ROTFLSHTMDCOALM" } [ "Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me" abbreviate ] unit-test
{ "SIMUFTA" } [ "Something - I made up from thin air" abbreviate ] unit-test
{ "HC" } [ "Halley's Comet" abbreviate ] unit-test
{ "TRNT" } [ "The Road _Not_ Taken" abbreviate ] unit-test
