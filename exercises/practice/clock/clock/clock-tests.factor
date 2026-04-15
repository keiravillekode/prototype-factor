USING: clock kernel tools.test lexer ;

: STOP-HERE ( -- ) lexer get [ text>> length ] keep line<< ; parsing

{ "08:00" } [ 8 0 <clock> ] unit-test

STOP-HERE

{ "11:09" } [ 11 9 <clock> ] unit-test
{ "00:00" } [ 24 0 <clock> ] unit-test
{ "01:00" } [ 25 0 <clock> ] unit-test
{ "04:00" } [ 100 0 <clock> ] unit-test
{ "02:00" } [ 1 60 <clock> ] unit-test
{ "02:40" } [ 0 160 <clock> ] unit-test
{ "04:43" } [ 0 1723 <clock> ] unit-test
{ "03:40" } [ 25 160 <clock> ] unit-test
{ "11:01" } [ 201 3001 <clock> ] unit-test
{ "00:00" } [ 72 8640 <clock> ] unit-test
{ "23:15" } [ -1 15 <clock> ] unit-test
{ "23:00" } [ -25 0 <clock> ] unit-test
{ "05:00" } [ -91 0 <clock> ] unit-test
{ "00:20" } [ 1 -40 <clock> ] unit-test
{ "22:20" } [ 1 -160 <clock> ] unit-test
{ "16:40" } [ 1 -4820 <clock> ] unit-test
{ "01:00" } [ 2 -60 <clock> ] unit-test
{ "20:20" } [ -25 -160 <clock> ] unit-test
{ "22:10" } [ -121 -5810 <clock> ] unit-test
{ "10:03" } [ 10 0 <clock> 3 add-minutes ] unit-test
{ "06:41" } [ 6 41 <clock> 0 add-minutes ] unit-test
{ "01:25" } [ 0 45 <clock> 40 add-minutes ] unit-test
{ "11:01" } [ 10 0 <clock> 61 add-minutes ] unit-test
{ "03:25" } [ 0 45 <clock> 160 add-minutes ] unit-test
{ "00:01" } [ 23 59 <clock> 2 add-minutes ] unit-test
{ "06:32" } [ 5 32 <clock> 1500 add-minutes ] unit-test
{ "11:21" } [ 1 1 <clock> 3500 add-minutes ] unit-test
{ "10:00" } [ 10 3 <clock> 3 subtract-minutes ] unit-test
{ "09:33" } [ 10 3 <clock> 30 subtract-minutes ] unit-test
{ "08:53" } [ 10 3 <clock> 70 subtract-minutes ] unit-test
{ "23:59" } [ 0 3 <clock> 4 subtract-minutes ] unit-test
{ "21:20" } [ 0 0 <clock> 160 subtract-minutes ] unit-test
{ "03:35" } [ 6 15 <clock> 160 subtract-minutes ] unit-test
{ "04:32" } [ 5 32 <clock> 1500 subtract-minutes ] unit-test
{ "00:20" } [ 2 20 <clock> 3000 subtract-minutes ] unit-test
{ t } [ 15 37 <clock> 15 37 <clock> clock= ] unit-test
{ f } [ 15 36 <clock> 15 37 <clock> clock= ] unit-test
{ f } [ 14 37 <clock> 15 37 <clock> clock= ] unit-test
{ t } [ 10 37 <clock> 34 37 <clock> clock= ] unit-test
{ t } [ 3 11 <clock> 99 11 <clock> clock= ] unit-test
{ t } [ 22 40 <clock> -2 40 <clock> clock= ] unit-test
{ t } [ 17 3 <clock> -31 3 <clock> clock= ] unit-test
{ t } [ 13 49 <clock> -83 49 <clock> clock= ] unit-test
{ t } [ 0 1 <clock> 0 1441 <clock> clock= ] unit-test
{ t } [ 2 2 <clock> 2 4322 <clock> clock= ] unit-test
{ t } [ 2 40 <clock> 3 -20 <clock> clock= ] unit-test
{ t } [ 4 10 <clock> 5 -1490 <clock> clock= ] unit-test
{ t } [ 6 15 <clock> 6 -4305 <clock> clock= ] unit-test
{ t } [ 7 32 <clock> -12 -268 <clock> clock= ] unit-test
{ t } [ 18 7 <clock> -54 -11513 <clock> clock= ] unit-test
{ t } [ 24 0 <clock> 0 0 <clock> clock= ] unit-test
