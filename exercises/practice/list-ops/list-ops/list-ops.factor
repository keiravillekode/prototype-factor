USING: ;
IN: list-ops

: list-append ( seq1 seq2 -- seq ) 2drop { } ;
: list-concat ( seqs -- seq ) drop { } ;
: select ( seq quot -- seq' ) 2drop { } ; inline
: collect ( seq quot -- seq' ) 2drop { } ; inline
: foldl ( seq init quot -- result ) 3drop 0 ; inline
: foldr ( seq init quot -- result ) 3drop 0 ; inline
: list-length ( seq -- n ) drop 0 ;
: list-reverse ( seq -- seq' ) drop { } ;
