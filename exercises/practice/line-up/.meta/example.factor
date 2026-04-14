USING: combinators kernel math math.order math.parser sequences ;
IN: line-up

: ordinal-suffix ( n -- str )
    dup 100 mod dup 11 13 between?
    [ 2drop "th" ]
    [ drop 10 mod { { 1 [ "st" ] } { 2 [ "nd" ] } { 3 [ "rd" ] } [ drop "th" ] } case ]
    if ;

: format ( name number -- str )
    dup number>string swap ordinal-suffix append
    [ ", you are the " append ] dip
    append " customer we serve today. Thank you!" append ;
