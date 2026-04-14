USING: kernel locals math math.functions ;
IN: nth-prime

:: nth-prime ( n -- prime )
    n 0 = [ "there is no zeroth prime" throw ] when
    2 :> candidate!
    0 :> count!
    [ count n < ] [
        candidate :> c
        t :> is-prime!
        2 :> d!
        [ d d * c <= is-prime and ] [
            c d mod 0 = [ f is-prime! ] when
            d 1 + d!
        ] while
        is-prime [ count 1 + count! ] when
        candidate 1 + candidate!
    ] while
    candidate 1 - ;
