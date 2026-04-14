USING: arrays assocs hashtables kernel locals math math.bitwise
math.order ranges sequences sets sorting strings unicode ;
IN: alphametics

:: parse-puzzle ( puzzle -- letters ncols )
    26 f <array> :> table
    -1 :> sign!
    0 :> place!
    -1 :> prev!

    puzzle length 1 - 0 [a..b] [| i |
        puzzle i swap nth :> ch
        ch CHAR: A - :> ci
        ci 0 >= ci 26 < and [
            ci table nth [
                first3 :> ( lead wt rank )
                lead
                place wt length >= [
                    place 1 + 0 <array> :> nwt
                    wt [ over set-nth ] each-index nwt
                ] [ wt ] if
                :> wt2
                place wt2 nth sign + place wt2 set-nth
                wt2
                rank place min
                3array ci table set-nth
            ] [
                place 1 + 0 <array> :> wt
                sign place wt set-nth
                f wt place 3array ci table set-nth
            ] if
            ci prev!
            place 1 + place!
        ] [
            ch CHAR: = = [ 1 sign! ] when
            place 0 > prev 0 >= and [
                prev table nth first3 :> ( lead wt rank )
                t wt rank 3array prev table set-nth
            ] when
            0 place!
        ] if
    ] each
    place 0 > prev 0 >= and [
        prev table nth first3 :> ( lead wt rank )
        t wt rank 3array prev table set-nth
    ] when

    0 :> ncols!
    V{ } clone :> letters
    26 <iota> [| i |
        i table nth [
            first3 :> ( lead wt rank )
            wt length ncols max ncols!
            i CHAR: A + lead wt rank 4array letters push
        ] when
    ] each
    letters [ 3 swap nth ] sort-by >array
    ncols ;

:: column-sum ( letters col mapping -- sum )
    0 letters [| info |
        info 2 swap nth :> wt
        col wt length < [
            info first mapping at 0 or col wt nth * +
        ] when
    ] each ;

DEFER: search-step

:: advance-col ( letters ncols idx claimed col carry mapping -- mapping/f )
    carry letters col mapping column-sum + :> colsum
    colsum 10 mod 0 = [
        col 1 + ncols < [
            letters ncols idx claimed col 1 + colsum 10 /i mapping search-step
        ] [
            colsum 0 = [ mapping ] [ f ] if
        ] if
    ] [ f ] if ;

:: search-step ( letters ncols idx claimed col carry mapping -- mapping/f )
    idx letters length >=
    idx letters length < [ letters idx swap nth 3 swap nth col > ] [ f ] if
    or [
        letters ncols idx claimed col carry mapping advance-col
    ] [
        letters idx swap nth :> info
        info first :> ch
        info second :> leading
        f :> result!
        leading [ 1 ] [ 0 ] if 9 [a..b] [| digit |
            result not [
                digit claimed bit? not [
                    mapping clone :> m
                    digit ch m set-at
                    letters ncols idx 1 + digit claimed set-bit col carry m search-step
                    dup [ result! ] [ drop ] if
                ] when
            ] when
        ] each
        result
    ] if ;

:: solve ( puzzle -- result )
    puzzle parse-puzzle :> ( letters ncols )
    letters ncols 0 0 0 0 H{ } clone search-step
    dup [
        :> mapping
        puzzle [| ch |
            ch Letter? [ ch mapping at CHAR: 0 + ] [ ch ] if
        ] map
    ] [ drop f ] if ;
