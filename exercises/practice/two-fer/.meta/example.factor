USING: formatting kernel ;
IN: two-fer

: two-fer ( name/f -- str )
    [ "you" ] unless* "One for %s, one for me." sprintf ;
