USING: kernel sequences sets unicode ;
IN: pangram

: pangram? ( sentence -- ? )
    >lower [ Letter? ] filter unique length 26 >= ;
