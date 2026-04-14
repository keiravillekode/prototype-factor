USING: rna-transcription kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ "" } [ "" to-rna ] unit-test

STOP-HERE

{ "G" } [ "C" to-rna ] unit-test
{ "C" } [ "G" to-rna ] unit-test
{ "A" } [ "T" to-rna ] unit-test
{ "U" } [ "A" to-rna ] unit-test
{ "UGCACCAGAAUU" } [ "ACGTGGTCTTAA" to-rna ] unit-test
