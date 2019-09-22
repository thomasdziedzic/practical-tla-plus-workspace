--------------------------------- MODULE in ---------------------------------
EXTENDS Integers, TLC

(*--algorithm in
variables x \in 1..3;
begin
    assert x <= 2;
end algorithm; *)
\* BEGIN TRANSLATION
VARIABLES x, pc

vars == << x, pc >>

Init == (* Global variables *)
        /\ x \in 1..3
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ Assert(x <= 2, "Failure of assertion at line 7, column 5.")
         /\ pc' = "Done"
         /\ x' = x

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Lbl_1
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Mon Sep 02 21:06:06 CDT 2019 by tom
\* Created Mon Sep 02 20:59:30 CDT 2019 by tom
