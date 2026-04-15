USING: ;
IN: clock

: <clock> ( hour minute -- str ) 2drop "" ;
: add-minutes ( clock minutes -- clock' ) drop ;
: subtract-minutes ( clock minutes -- clock' ) drop ;
: clock= ( clock1 clock2 -- ? ) 2drop f ;
