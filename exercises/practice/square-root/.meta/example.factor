USING: kernel math ;
IN: square-root

: square-root ( n -- root )
    1 [ 2dup sq >= ] [ 1 + ] while 1 - nip ;
