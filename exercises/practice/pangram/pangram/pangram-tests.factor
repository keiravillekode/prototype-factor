USING: pangram tools.test ;

{ f } [ "" pangram? ] unit-test
{ t } [ "abcdefghijklmnopqrstuvwxyz" pangram? ] unit-test
{ t } [ "the quick brown fox jumps over the lazy dog" pangram? ] unit-test
{ f } [ "a quick movement of the enemy will jeopardize five gunboats" pangram? ] unit-test
{ f } [ "five boxing wizards jump quickly at it" pangram? ] unit-test
{ t } [ "the_quick_brown_fox_jumps_over_the_lazy_dog" pangram? ] unit-test
{ t } [ "the 1 quick brown fox jumps over the 2 lazy dogs" pangram? ] unit-test
{ f } [ "7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog" pangram? ] unit-test
{ t } [ "\"Five quacking Zephyrs jolt my wax bed.\"" pangram? ] unit-test
{ f } [ "abcdefghijklm ABCDEFGHIJKLM" pangram? ] unit-test
