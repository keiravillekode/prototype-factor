USING: ;
EXCLUDE: sequences => accumulate ;
IN: accumulate

: accumulate ( seq quot -- seq' ) 2drop { } ; inline
