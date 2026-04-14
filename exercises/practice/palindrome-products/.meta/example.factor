USING: arrays kernel locals math math.order math.parser
sequences ;
IN: palindrome-products

: palindrome? ( n -- ? )
    number>string dup reverse sequence= ;

:: smallest ( mn mx -- result )
    mn mx > [ "min must be <= max" throw ] when
    f :> value!
    V{ } clone :> factors
    mn 2 * :> s-min
    mx 2 * :> s-max
    s-min :> s!
    [ s s-max <= ] [
        s mn - mx min s 2 /i min :> first-hi
        s mx - mn max :> first-lo
        ! minimum product on this diagonal is at the edge
        value [ first-lo s first-lo - * > ] [ f ] if* not [
            first-lo :> first!
            [ first first-hi <= ] [
                s first - :> second
                first second * :> product
                value [ product > ] [ f ] if* not [
                    product palindrome? [
                        value [ product > ] [ t ] if* [
                            product value!
                            factors delete-all
                            first second 2array factors push
                        ] [
                            product value = [
                                first second 2array factors push
                            ] when
                        ] if
                    ] when
                ] when
                first 1 + first!
            ] while
        ] when
        s 1 + s!
    ] while
    value factors >array 2array ;

:: largest ( mn mx -- result )
    mn mx > [ "min must be <= max" throw ] when
    f :> value!
    V{ } clone :> factors
    mn 2 * :> s-min
    mx 2 * :> s-max
    s-max :> s!
    [ s s-min >= ] [
        s mn - mx min s 2 /i min :> first-hi
        s mx - mn max :> first-lo
        ! maximum product on this diagonal is at s/2
        s 2 /i dup * value [ < ] [ drop f ] if* not [
            first-lo :> first!
            [ first first-hi <= ] [
                s first - :> second
                first second * :> product
                product palindrome? [
                    value [ product < ] [ t ] if* [
                        product value!
                        factors delete-all
                        first second 2array factors push
                    ] [
                        product value = [
                            first second 2array factors push
                        ] when
                    ] if
                ] when
                first 1 + first!
            ] while
        ] when
        s 1 - s!
    ] while
    value factors >array 2array ;
