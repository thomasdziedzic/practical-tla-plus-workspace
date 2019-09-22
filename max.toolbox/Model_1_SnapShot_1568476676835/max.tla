-------------------------------- MODULE max --------------------------------

EXTENDS Integers, Sequences, TLC
CONSTANTS IntSet, MaxSeqLen
ASSUME IntSet \subseteq Int
ASSUME MaxSeqLen > 0

PT == INSTANCE PT

Max1(seq) ==
    LET set == {seq[i]: i \in 1..Len(seq)}
    IN CHOOSE x \in set: \A y \in set: y <= x

Max2(seq) ==
    LET index ==
        CHOOSE x \in 1..Len(seq):
            \A y \in 1..Len(seq): seq[y] <= seq[x]
    IN seq[index]

AllInputs == PT!SeqOf(IntSet, MaxSeqLen)

(*--algorithm max
variables seq \in AllInputs, i = 1, max = seq[1];
begin
    \*max := seq[1];
    while i <= Len(seq) do
        if max < seq[i] then
            max := seq[i];
        end if;
        i := i + 1;
    end while;
    assert max = Max1(seq);
end algorithm; *)
\* BEGIN TRANSLATION
VARIABLES seq, i, max, pc

vars == << seq, i, max, pc >>

Init == (* Global variables *)
        /\ seq \in AllInputs
        /\ i = 1
        /\ max = seq[1]
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ IF i <= Len(seq)
               THEN /\ IF max < seq[i]
                          THEN /\ max' = seq[i]
                          ELSE /\ TRUE
                               /\ max' = max
                    /\ i' = i + 1
                    /\ pc' = "Lbl_1"
               ELSE /\ Assert(max = Max1(seq), 
                              "Failure of assertion at line 32, column 5.")
                    /\ pc' = "Done"
                    /\ UNCHANGED << i, max >>
         /\ seq' = seq

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Lbl_1
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Sat Sep 14 10:57:53 CDT 2019 by tom
\* Created Sat Sep 14 10:43:39 CDT 2019 by tom
