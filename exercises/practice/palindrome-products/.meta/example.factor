USING: arrays kernel locals math math.order math.parser ranges
sequences sorting ;
IN: palindrome-products

: palindrome? ( n -- ? )
    number>string dup reverse sequence= ;

:: find-palindromes ( mn mx -- pairs )
    V{ } clone :> results
    mn mx [a..b] [| i |
        i mx [a..b] [| j |
            i j * :> prod
            prod palindrome? [
                prod { i j } 2array results push
            ] when
        ] each
    ] each
    results >array ;

:: extract ( pairs cmp -- result )
    pairs empty? [ f { } 2array ] [
        pairs [ first ] map cmp call :> val
        val pairs [ first val = ] filter [ second ] map >array 2array
    ] if ; inline

:: smallest ( mn mx -- result )
    mn mx > [ "min must be <= max" throw ] when
    mn mx find-palindromes [ infimum ] extract ;

:: largest ( mn mx -- result )
    mn mx > [ "min must be <= max" throw ] when
    mn mx find-palindromes [ supremum ] extract ;
