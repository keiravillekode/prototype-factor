USING: combinators kernel math math.order ranges sequences ;
IN: perfect-numbers

: aliquot-sum ( n -- sum )
    dup 1 = [ drop 0 ] [
        dup 1 swap 1 - [a..b] [ over swap mod 0 = ] filter sum nip
    ] if ;

: classify ( n -- str )
    dup 0 > [ "Classification is only possible for positive integers." throw ] unless
    dup aliquot-sum {
        { [ 2dup = ] [ 2drop "perfect" ] }
        { [ 2dup < ] [ 2drop "abundant" ] }
        [ 2drop "deficient" ]
    } cond ;
