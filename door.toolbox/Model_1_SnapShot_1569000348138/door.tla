-------------------------------- MODULE door --------------------------------

(*--algorithm door
variables
    open = FALSE,
    locked = FALSE,
    key \in BOOLEAN;
begin
    Event:
        either \* unlock
            await locked /\ (open \/ key);
            locked := FALSE
        or \* lock
            await ~locked /\ (open \/ key);
            locked := TRUE;
        or \* open
            await ~locked /\ ~open;
            await ~open;
            open := TRUE;
        or \* close
            await open /\ ~locked;
            open := FALSE
        end either;
    goto Event;
end algorithm; *)
\* BEGIN TRANSLATION
VARIABLES open, locked, key, pc

vars == << open, locked, key, pc >>

Init == (* Global variables *)
        /\ open = FALSE
        /\ locked = FALSE
        /\ key \in BOOLEAN
        /\ pc = "Event"

Event == /\ pc = "Event"
         /\ \/ /\ locked /\ (open \/ key)
               /\ locked' = FALSE
               /\ open' = open
            \/ /\ ~locked /\ (open \/ key)
               /\ locked' = TRUE
               /\ open' = open
            \/ /\ ~locked /\ ~open
               /\ ~open
               /\ open' = TRUE
               /\ UNCHANGED locked
            \/ /\ open /\ ~locked
               /\ open' = FALSE
               /\ UNCHANGED locked
         /\ pc' = "Event"
         /\ key' = key

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == pc = "Done" /\ UNCHANGED vars

Next == Event
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Fri Sep 20 12:25:44 CDT 2019 by tom
\* Created Fri Sep 20 12:15:39 CDT 2019 by tom
