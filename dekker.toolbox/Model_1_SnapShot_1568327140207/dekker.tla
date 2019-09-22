------------------------------- MODULE dekker -------------------------------

EXTENDS TLC, Integers
CONSTANT Threads
(*--algorithm dekker
variables flag = [t \in Threads |-> FALSE];

fair process thread \in Threads
begin
    P1: flag[self] := TRUE;
    \* all threads except self are false
    P2: await \A t \in Threads \ {self}: ~flag[t];
    CS: skip;
    P3: flag[self] := FALSE;
    P4: goto P1;
end process;

end algorithm; *)
\* BEGIN TRANSLATION
VARIABLES flag, pc

vars == << flag, pc >>

ProcSet == (Threads)

Init == (* Global variables *)
        /\ flag = [t \in Threads |-> FALSE]
        /\ pc = [self \in ProcSet |-> "P1"]

P1(self) == /\ pc[self] = "P1"
            /\ flag' = [flag EXCEPT ![self] = TRUE]
            /\ pc' = [pc EXCEPT ![self] = "P2"]

P2(self) == /\ pc[self] = "P2"
            /\ \A t \in Threads \ {self}: ~flag[t]
            /\ pc' = [pc EXCEPT ![self] = "CS"]
            /\ flag' = flag

CS(self) == /\ pc[self] = "CS"
            /\ TRUE
            /\ pc' = [pc EXCEPT ![self] = "P3"]
            /\ flag' = flag

P3(self) == /\ pc[self] = "P3"
            /\ flag' = [flag EXCEPT ![self] = FALSE]
            /\ pc' = [pc EXCEPT ![self] = "P4"]

P4(self) == /\ pc[self] = "P4"
            /\ pc' = [pc EXCEPT ![self] = "P1"]
            /\ flag' = flag

thread(self) == P1(self) \/ P2(self) \/ CS(self) \/ P3(self) \/ P4(self)

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == /\ \A self \in ProcSet: pc[self] = "Done"
               /\ UNCHANGED vars

Next == (\E self \in Threads: thread(self))
           \/ Terminating

Spec == /\ Init /\ [][Next]_vars
        /\ \A self \in Threads : WF_vars(thread(self))

Termination == <>(\A self \in ProcSet: pc[self] = "Done")

\* END TRANSLATION

AtMostOneCritical1 ==
    \/ \A t \in Threads: pc[t] /= "CS"
    \/ \E t \in Threads:
        /\ pc[t] = "CS"
        /\ \A t2 \in Threads \ {t}: pc[t2] /= "CS"

AtMostOneCritical2 ==
    \A t1, t2 \in Threads:
        t1 /= t2 => ~(pc[t1] = "CS" /\ pc[t2] = "CS")

=============================================================================
\* Modification History
\* Last modified Thu Sep 12 17:24:54 CDT 2019 by tom
\* Created Thu Sep 12 17:13:31 CDT 2019 by tom
