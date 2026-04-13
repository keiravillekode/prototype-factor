USING: all-your-base tools.test ;

! success cases
{ { 1 }              } [ { 1 }                 2  10 rebase ] unit-test
{ { 5 }              } [ { 1 0 1 }             2  10 rebase ] unit-test
{ { 1 0 1 }          } [ { 5 }                 10 2  rebase ] unit-test
{ { 4 2 }            } [ { 1 0 1 0 1 0 }       2  10 rebase ] unit-test
{ { 1 0 1 0 1 0 }    } [ { 4 2 }               10 2  rebase ] unit-test
{ { 2 10 }           } [ { 1 1 2 0 }           3  16 rebase ] unit-test
{ { 1 1 2 0 }        } [ { 2 10 }              16 3  rebase ] unit-test
{ { 6 10 45 }        } [ { 3 46 60 }           97 73 rebase ] unit-test
{ { 0 }              } [ { }                   2  10 rebase ] unit-test
{ { 0 }              } [ { 0 }                 10 2  rebase ] unit-test
{ { 0 }              } [ { 0 0 0 }             10 2  rebase ] unit-test
{ { 4 2 }            } [ { 0 6 0 }             7  10 rebase ] unit-test

! error cases
[ { 0 }     1  10 rebase ] [ "input base must be >= 2"                    = ] must-fail-with
[ { }       0  10 rebase ] [ "input base must be >= 2"                    = ] must-fail-with
[ { 1 }     -2 10 rebase ] [ "input base must be >= 2"                    = ] must-fail-with
[ { 1 -1 1 0 1 0 } 2 10 rebase ] [ "all digits must satisfy 0 <= d < input base" = ] must-fail-with
[ { 1 2 1 0 1 0 }  2 10 rebase ] [ "all digits must satisfy 0 <= d < input base" = ] must-fail-with
[ { 1 0 1 0 1 0 }  2 1  rebase ] [ "output base must be >= 2"                   = ] must-fail-with
[ { 7 }     10 0  rebase ] [ "output base must be >= 2"                   = ] must-fail-with
[ { 1 }     2  -7 rebase ] [ "output base must be >= 2"                   = ] must-fail-with
[ { 1 }     -2 -7 rebase ] [ "input base must be >= 2"                    = ] must-fail-with
