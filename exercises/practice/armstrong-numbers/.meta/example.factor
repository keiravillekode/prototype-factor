USING: kernel math math.functions math.parser sequences ;
IN: armstrong-numbers

: armstrong-number? ( n -- ? )
    dup number>string dup length swap
    [ CHAR: 0 - swap ^ ] with map-sum = ;
