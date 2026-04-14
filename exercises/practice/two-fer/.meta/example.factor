USING: kernel sequences ;
IN: two-fer

: two-fer ( name/f -- str )
    [ "you" ] unless* "One for " swap append ", one for me." append ;
