USING: kernel math math.parser sequences ;
IN: raindrops

: convert ( n -- str )
    dup
    [ 3 mod zero? [ "Pling" ] [ "" ] if ]
    [ 5 mod zero? [ "Plang" ] [ "" ] if ]
    [ 7 mod zero? [ "Plong" ] [ "" ] if ] tri
    3append
    dup empty? [ drop number>string ] [ nip ] if ;
