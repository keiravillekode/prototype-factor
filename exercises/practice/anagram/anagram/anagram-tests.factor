USING: anagram tools.test ;

{ { } } [ "diaper" { "hello" "world" "zombies" "pants" } find-anagrams ] unit-test
{ { "lemons" "melons" } } [ "solemn" { "lemons" "cherry" "melons" } find-anagrams ] unit-test
{ { } } [ "good" { "dog" "goody" } find-anagrams ] unit-test
{ { "inlets" } } [ "listen" { "enlists" "google" "inlets" "banana" } find-anagrams ] unit-test
{ { "gallery" "regally" "largely" } } [ "allergy" { "gallery" "ballerina" "regally" "clergy" "largely" "leading" } find-anagrams ] unit-test
{ { "Eons" "ONES" } } [ "nose" { "Eons" "ONES" } find-anagrams ] unit-test
{ { } } [ "mass" { "last" } find-anagrams ] unit-test
{ { "Carthorse" } } [ "Orchestra" { "cashregister" "Carthorse" "radishes" } find-anagrams ] unit-test
{ { "carthorse" } } [ "Orchestra" { "cashregister" "carthorse" "radishes" } find-anagrams ] unit-test
{ { "Carthorse" } } [ "orchestra" { "cashregister" "Carthorse" "radishes" } find-anagrams ] unit-test
{ { } } [ "go" { "goGoGO" } find-anagrams ] unit-test
{ { } } [ "tapper" { "patter" } find-anagrams ] unit-test
{ { } } [ "BANANA" { "banana" } find-anagrams ] unit-test
{ { "Silent" } } [ "LISTEN" { "LISTEN" "Silent" } find-anagrams ] unit-test
{ { "ΒΓΑ" "γβα" } } [ "ΑΒΓ" { "ΒΓΑ" "ΒΓΔ" "γβα" "αβγ" } find-anagrams ] unit-test
{ { } } [ "a⬂" { "€a" } find-anagrams ] unit-test
