USING: kernel math sequences ;
IN: all-your-base

: digits>integer ( digits base -- n )
    [ 0 ] dip [ [ * ] dip + ] curry each ;

: integer>digits ( n base -- digits )
    [ dup 0 > ] swap [ /mod ] curry produce nip reverse
    dup empty? [ drop { 0 } ] when ;

: validate-base ( base msg -- base )
    over 2 < [ throw ] [ drop ] if ;

: validate-digits ( digits base -- digits )
    [ [ dup 0 < ] dip >= or ] curry any?
    [ "all digits must satisfy 0 <= d < input base" throw ] when ;

: rebase ( digits input-base output-base -- digits' )
    "output base must be >= 2" validate-base
    [ "input base must be >= 2" validate-base ] dip
    [ over validate-digits digits>integer ] dip
    integer>digits ;
