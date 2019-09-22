----------------------------- MODULE operators -----------------------------

EXTENDS Integers, Sequences

(*--algorithm operators
define
    AllLessThan(set, max) == \A num \in set: num < max
    
    SeqOverlapsSet(seq, set) == \E x \in 1..Len(seq): seq[x] \in set
    
    IsCommutativeOver(Op(_, _), S) == \A x, y \in S: Op(x, y) = Op(y, x)
    
    (* alternative forms
    IsCommutativeOver(Op(_, _), S) == \A x \in S, y \in S: Op(x, y) = Op(y, x)
    
    IsCommutativeOver(Op(_, _), S) == \A <<x, y>> \in S \X S: Op(x, y) = Op(y, x)
    *)
    
    Xor(A, B) == (~A /\ B) \/ (A /\ ~B)
    
    OtherXor(A, B) == ~A <=> B
    
    RotateRight(seq) ==
        LET
            last == seq[Len(seq)]
            first == SubSeq(seq, 1, Len(seq) - 1)
        IN <<last>> \o first
        
    Max(x, y) == IF x > y THEN x ELSE y
end define;

begin
    skip;
end algorithm; *)
\* BEGIN TRANSLATION
VARIABLE pc

(* define statement *)
AllLessThan(set, max) == \A num \in set: num < max

SeqOverlapsSet(seq, set) == \E x \in 1..Len(seq): seq[x] \in set

IsCommutativeOver(Op(_, _), S) == \A x, y \in S: Op(x, y) = Op(y, x)







Xor(A, B) == (~A /\ B) \/ (A /\ ~B)

OtherXor(A, B) == ~A <=> B

RotateRight(seq) ==
    LET
        last == seq[Len(seq)]
        first == SubSeq(seq, 1, Len(seq) - 1)
    IN <<last>> \o first

Max(x, y) == IF x > y THEN x ELSE y


vars == << pc >>

Init == /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ TRUE
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
\* Last modified Tue Sep 03 19:20:01 CDT 2019 by tom
\* Created Tue Sep 03 18:51:07 CDT 2019 by tom
