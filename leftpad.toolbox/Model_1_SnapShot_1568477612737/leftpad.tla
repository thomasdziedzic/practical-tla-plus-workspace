------------------------------ MODULE leftpad ------------------------------

EXTENDS Integers, Sequences, TLC
PT == INSTANCE PT

Leftpad(c, n, str) ==
    LET
        outlength == PT!Max(Len(str), n)
        padlength ==
            CHOOSE padlength \in 0..n:
                padlength + Len(str) = outlength
    IN
        [x \in 1..padlength |-> c] \o str

Characters == {"a", "b", "c"}

(*--algorithm leftpad
variables
    in_c \in Characters \union {" "},
    in_n \in 0..6,
    in_str \in PT!SeqOf(Characters, 6),
    output;
begin
    output := in_str;
    while Len(output) <= in_n do
        output := <<in_c>> \o output;
    end while;
    assert output = Leftpad(in_c, in_n, in_str);
end algorithm; *)
\* BEGIN TRANSLATION
CONSTANT defaultInitValue
VARIABLES in_c, in_n, in_str, output, pc

vars == << in_c, in_n, in_str, output, pc >>

Init == (* Global variables *)
        /\ in_c \in (Characters \union {" "})
        /\ in_n \in 0..6
        /\ in_str \in PT!SeqOf(Characters, 6)
        /\ output = defaultInitValue
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ output' = in_str
         /\ pc' = "Lbl_2"
         /\ UNCHANGED << in_c, in_n, in_str >>

Lbl_2 == /\ pc = "Lbl_2"
         /\ IF Len(output) <= in_n
               THEN /\ output' = <<in_c>> \o output
                    /\ pc' = "Lbl_2"
               ELSE /\ Assert(output = Leftpad(in_c, in_n, in_str), 
                              "Failure of assertion at line 28, column 5.")
                    /\ pc' = "Done"
                    /\ UNCHANGED output
         /\ UNCHANGED << in_c, in_n, in_str >>

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Lbl_1 \/ Lbl_2
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Sat Sep 14 11:13:28 CDT 2019 by tom
\* Created Sat Sep 14 11:04:17 CDT 2019 by tom
