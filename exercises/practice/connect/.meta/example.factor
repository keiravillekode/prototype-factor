USING: arrays hashtables kernel locals math sequences strings
vectors ;
IN: connect

:: parse-board ( board -- grid )
    board [| row i |
        row i tail [ CHAR: \s = not ] filter
    ] map-index ;

:: cell-at ( grid r c -- ch/f )
    r 0 >= r grid length < and
    c 0 >= c r grid nth length < and and
    [ r grid nth c swap nth ] [ f ] if ;

CONSTANT: hex-dirs { { -1 0 } { -1 1 } { 0 -1 } { 0 1 } { 1 -1 } { 1 0 } }

:: bfs ( grid ch starts goal? -- ? )
    H{ } clone :> visited
    starts >vector :> queue
    0 :> qi!
    f :> found!
    [ qi queue length < found not and ] [
        qi queue nth :> pos
        qi 1 + qi!
        pos visited key? not [
            pos first2 :> ( r c )
            grid r c cell-at ch = [
                t pos visited set-at
                r c goal? call( r c -- ? ) [
                    t found!
                ] [
                    hex-dirs [| d |
                        r d first + c d second + 2array :> nb
                        nb visited key? not [ nb queue push ] when
                    ] each
                ] if
            ] when
        ] when
    ] while
    found ;

:: winner ( board -- str )
    board parse-board :> grid
    grid empty? [ "" ] [
        grid first length :> cols
        grid length :> rows
        grid CHAR: X
        rows <iota> [ 0 2array ] map >array
        [ nip cols 1 - = ] bfs
        [ "X" ] [
            grid CHAR: O
            cols <iota> [ 0 swap 2array ] map >array
            [ drop rows 1 - = ] bfs
            [ "O" ] [ "" ] if
        ] if
    ] if ;
