USING: kernel sequences splitting strings unicode ;
IN: acronym

: abbreviate ( phrase -- acronym )
    [ " -_" member? ] split-when harvest [ first ] map >upper >string ;
