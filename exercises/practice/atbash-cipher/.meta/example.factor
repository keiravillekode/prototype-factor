USING: ascii kernel math sequences strings ;
IN: atbash-cipher

: atbash-char ( ch -- ch' )
    dup Letter? [ >lower CHAR: a - CHAR: z swap - ] when ;

: atbash-core ( phrase -- str )
    [ dup Letter? swap digit? or ] filter
    [ atbash-char ] map ;

: encode ( phrase -- str )
    atbash-core 5 group [ >string ] map " " join ;

: decode ( phrase -- str )
    atbash-core >string ;
