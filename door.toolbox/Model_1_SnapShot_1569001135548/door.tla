-------------------------------- MODULE door --------------------------------

(*--algorithm door
variables
    open = FALSE,
    locked = FALSE,
    key \in BOOLEAN;

process open_door = "Open Door"
begin
    OpenDoor:
        await open;
        either \* lock/unlock
            locked := ~locked
        or \* close
            await ~locked;
            open := FALSE
        end either;
        goto OpenDoor;
end process;

process closed_door = "Closed Door"
begin
    ClosedDoor:
        await ~open;
        either \* lock/unlock
            await key;
            locked := ~locked;
        or
            await ~locked;
            open := TRUE;
        end either;
        goto ClosedDoor;
end process;
end algorithm; *)
\* BEGIN TRANSLATION
VARIABLES open, locked, key, pc

vars == << open, locked, key, pc >>

ProcSet == {"Open Door"} \cup {"Closed Door"}

Init == (* Global variables *)
        /\ open = FALSE
        /\ locked = FALSE
        /\ key \in BOOLEAN
        /\ pc = [self \in ProcSet |-> CASE self = "Open Door" -> "OpenDoor"
                                        [] self = "Closed Door" -> "ClosedDoor"]

OpenDoor == /\ pc["Open Door"] = "OpenDoor"
            /\ open
            /\ \/ /\ locked' = ~locked
                  /\ open' = open
               \/ /\ ~locked
                  /\ open' = FALSE
                  /\ UNCHANGED locked
            /\ pc' = [pc EXCEPT !["Open Door"] = "OpenDoor"]
            /\ key' = key

open_door == OpenDoor

ClosedDoor == /\ pc["Closed Door"] = "ClosedDoor"
              /\ ~open
              /\ \/ /\ key
                    /\ locked' = ~locked
                    /\ open' = open
                 \/ /\ ~locked
                    /\ open' = TRUE
                    /\ UNCHANGED locked
              /\ pc' = [pc EXCEPT !["Closed Door"] = "ClosedDoor"]
              /\ key' = key

closed_door == ClosedDoor

(* Allow infinite stuttering to prevent deadlock on termination. *)
Terminating == /\ \A self \in ProcSet: pc[self] = "Done"
               /\ UNCHANGED vars

Next == open_door \/ closed_door
           \/ Terminating

Spec == Init /\ [][Next]_vars

Termination == <>(\A self \in ProcSet: pc[self] = "Done")

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Fri Sep 20 12:38:49 CDT 2019 by tom
\* Created Fri Sep 20 12:15:39 CDT 2019 by tom
