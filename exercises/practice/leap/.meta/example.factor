USING: math kernel ;
IN: leap

: leap-year? ( year -- ? )
    dup 400 mod zero? [
        drop t
    ] [
        dup 100 mod zero? [
            drop f
        ] [
            4 mod zero?
        ] if
    ] if ;
