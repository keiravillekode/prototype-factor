USING: crypto-square tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ "" } [ "" ciphertext ] unit-test

STOP-HERE

{ "" } [ "... --- ..." ciphertext ] unit-test
{ "a" } [ "A" ciphertext ] unit-test
{ "b" } [ "  b " ciphertext ] unit-test
{ "1" } [ "@1,%!" ciphertext ] unit-test
{ "tsf hiu isn" } [ "This is fun!" ciphertext ] unit-test
{ "clu hlt io " } [ "Chill out." ciphertext ] unit-test
{ "imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn  sseoau " } [ "If man was meant to stay on the ground, god would have given us roots." ciphertext ] unit-test
