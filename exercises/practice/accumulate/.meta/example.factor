USING: kernel locals ;
EXCLUDE: sequences => accumulate ;
IN: accumulate

:: accumulate ( seq quot: ( x -- y ) -- seq' )
    seq length seq new-sequence
    seq [| x i | x quot call i pick set-nth ] each-index ; inline
