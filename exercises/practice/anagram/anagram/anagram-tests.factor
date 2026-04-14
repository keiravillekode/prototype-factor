USING: anagram kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ V{ } } [ "diaper" V{ "hello" "world" "zombies" "pants" } find-anagrams ] unit-test

STOP-HERE

{ V{ "lemons" "melons" } } [ "solemn" V{ "lemons" "cherry" "melons" } find-anagrams ] unit-test
{ V{ } } [ "good" V{ "dog" "goody" } find-anagrams ] unit-test
{ V{ "inlets" } } [ "listen" V{ "enlists" "google" "inlets" "banana" } find-anagrams ] unit-test
{ V{ "gallery" "regally" "largely" } } [ "allergy" V{ "gallery" "ballerina" "regally" "clergy" "largely" "leading" } find-anagrams ] unit-test
{ V{ "Eons" "ONES" } } [ "nose" V{ "Eons" "ONES" } find-anagrams ] unit-test
{ V{ } } [ "mass" V{ "last" } find-anagrams ] unit-test
{ V{ "Carthorse" } } [ "Orchestra" V{ "cashregister" "Carthorse" "radishes" } find-anagrams ] unit-test
{ V{ "carthorse" } } [ "Orchestra" V{ "cashregister" "carthorse" "radishes" } find-anagrams ] unit-test
{ V{ "Carthorse" } } [ "orchestra" V{ "cashregister" "Carthorse" "radishes" } find-anagrams ] unit-test
{ V{ } } [ "go" V{ "goGoGO" } find-anagrams ] unit-test
{ V{ } } [ "tapper" V{ "patter" } find-anagrams ] unit-test
{ V{ } } [ "BANANA" V{ "banana" } find-anagrams ] unit-test
{ V{ "Silent" } } [ "LISTEN" V{ "LISTEN" "Silent" } find-anagrams ] unit-test
{ V{ "ΒΓΑ" "γβα" } } [ "ΑΒΓ" V{ "ΒΓΑ" "ΒΓΔ" "γβα" "αβγ" } find-anagrams ] unit-test
{ V{ } } [ "a⬂" V{ "€a" } find-anagrams ] unit-test
