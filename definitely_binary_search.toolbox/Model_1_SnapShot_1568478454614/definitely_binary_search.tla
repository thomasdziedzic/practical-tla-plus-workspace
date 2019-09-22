---------------------- MODULE definitely_binary_search ----------------------

EXTENDS Integers, Sequences, TLC
PT == INSTANCE PT

OrderedSeqOf(set, n) ==
    { seq \in PT!SeqOf(set, n):
        \A x \in 2..Len(seq):
            seq[x] >= seq[x-1] }

MaxInt == 4
Range(f) == {f[x]: x \in DOMAIN f}

(*--algorithm definitely_binary_search
variables i = 1,
    seq \in OrderedSeqOf(1..MaxInt, MaxInt),
    target \in 1..MaxInt,
    found_index = 0;
begin
    Search:
        while i <= Len(seq) do
            if seq[i] = target then
                found_index := i;
                goto Result;
            else
                i := i + 1;
            end if;
        end while;
    Result:
        if target \in Range(seq) then
            assert seq[found_index] = target;
        else
            assert found_index = 0;
        end if;
end algorithm; *)
\* BEGIN TRANSLATION
VARIABLES i, seq, target, found_index, pc

vars == << i, seq, target, found_index, pc >>

Init == (* Global variables *)
        /\ i = 1
        /\ seq \in OrderedSeqOf(1..MaxInt, MaxInt)
        /\ target \in 1..MaxInt
        /\ found_index = 0
        /\ pc = "Search"

Search == /\ pc = "Search"
          /\ IF i <= Len(seq)
                THEN /\ IF seq[i] = target
                           THEN /\ found_index' = i
                                /\ pc' = "Result"
                                /\ i' = i
                           ELSE /\ i' = i + 1
                                /\ pc' = "Search"
                                /\ UNCHANGED found_index
                ELSE /\ pc' = "Result"
                     /\ UNCHANGED << i, found_index >>
          /\ UNCHANGED << seq, target >>

Result == /\ pc = "Result"
          /\ IF target \in Range(seq)
                THEN /\ Assert(seq[found_index] = target, 
                               "Failure of assertion at line 31, column 13.")
                ELSE /\ Assert(found_index = 0, 
                               "Failure of assertion at line 33, column 13.")
          /\ pc' = "Done"
          /\ UNCHANGED << i, seq, target, found_index >>

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Search \/ Result
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION
=============================================================================
\* Modification History
\* Last modified Sat Sep 14 11:27:13 CDT 2019 by tom
\* Created Sat Sep 14 11:20:49 CDT 2019 by tom
