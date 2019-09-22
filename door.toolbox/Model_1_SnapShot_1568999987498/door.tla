-------------------------------- MODULE door --------------------------------

(*--algorithm door
variables
    open = FALSE,
    locked = FALSE;
begin
    Event:
        either \* unlock
            await locked;
            locked := FALSE
        or \* lock
            await ~locked;
            locked := TRUE;
        or \* open
            await ~locked;
            await ~open;
            open := TRUE;
        or \* close
            await open;
            open := FALSE
        end either;
    goto Event;
end algorithm; *)
\* BEGIN TRANSLATION
VARIABLES open, locked, pc

vars == << open, locked, pc >>

Init == (* Global variables *)
        /\ open = FALSE
        /\ locked = FALSE
        /\ pc = "Event"

Event == /\ pc = "Event"
         /\ \/ /\ locked
               /\ locked' = FALSE
               /\ open' = open
            \/ /\ ~locked
               /\ locked' = TRUE
               /\ open' = open
            \/ /\ ~locked
               /\ ~open
               /\ open' = TRUE
               /\ UNCHANGED locked
            \/ /\ open
               /\ open' = FALSE
               /\ UNCHANGED locked
         /\ pc' = "Event"

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Event
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Fri Sep 20 12:19:27 CDT 2019 by tom
\* Created Fri Sep 20 12:15:39 CDT 2019 by tom
