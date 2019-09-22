------------------------------- MODULE flags -------------------------------

EXTENDS Integers, TLC

Flags == {"f1", "f2"}
(*--algorithm flags
variables
    flags = [f \in Flags |-> FALSE];

define
    MapToSomeNumber(set, num) == [x \in set |-> num]
    
    SumUpTo(n) ==
        LET F[m \in 0..n] ==
            IF m = 0 THEN 0
            ELSE m + F[m-1]
        IN F[n]
    
    PT == INSTANCE PT
    
    SumUpTo2(n) ==
        PT!ReduceSet(LAMBDA x, y: x + y, 0..n, 0)
    
    F[x \in BOOLEAN] == x
    G == <<6, 0, 9>>
    H == [F |-> DOMAIN F, G |-> DOMAIN G]
    
    Merge(f, g) == [
            x \in (DOMAIN f) \union (DOMAIN g) |->
                IF x \in DOMAIN f THEN f[x] ELSE g[x]
        ]
    
    f1[x \in 1..2] == "a"
    g1[x \in 2..3] == "b"
    
    SeqOf(set, count) == [1..count -> set]
end define;

begin
    with f \in Flags do
        flags[f] := TRUE
    end with;
end algorithm; *)
\* BEGIN TRANSLATION
VARIABLES flags, pc

(* define statement *)
MapToSomeNumber(set, num) == [x \in set |-> num]

SumUpTo(n) ==
    LET F[m \in 0..n] ==
        IF m = 0 THEN 0
        ELSE m + F[m-1]
    IN F[n]

PT == INSTANCE PT

SumUpTo2(n) ==
    PT!ReduceSet(LAMBDA x, y: x + y, 0..n, 0)

F[x \in BOOLEAN] == x
G == <<6, 0, 9>>
H == [F |-> DOMAIN F, G |-> DOMAIN G]

Merge(f, g) == [
        x \in (DOMAIN f) \union (DOMAIN g) |->
            IF x \in DOMAIN f THEN f[x] ELSE g[x]
    ]

f1[x \in 1..2] == "a"
g1[x \in 2..3] == "b"

SeqOf(set, count) == [1..count -> set]


vars == << flags, pc >>

Init == (* Global variables *)
        /\ flags = [f \in Flags |-> FALSE]
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ \E f \in Flags:
              flags' = [flags EXCEPT ![f] = TRUE]
         /\ pc' = "Done"

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Lbl_1
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Tue Sep 03 21:20:20 CDT 2019 by tom
\* Created Tue Sep 03 19:43:17 CDT 2019 by tom
