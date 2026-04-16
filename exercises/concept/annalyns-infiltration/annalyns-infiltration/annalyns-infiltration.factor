USING: kernel ;
IN: annalyns-infiltration

: can-do-fast-attack ( knight-awake -- ? )
    drop f ;

: can-spy ( knight-awake archer-awake prisoner-awake -- ? )
    drop drop drop f ;

: can-signal-prisoner ( archer-awake prisoner-awake -- ? )
    drop drop f ;

: can-free-prisoner ( knight-awake archer-awake prisoner-awake dog-present -- ? )
    drop drop drop drop f ;
