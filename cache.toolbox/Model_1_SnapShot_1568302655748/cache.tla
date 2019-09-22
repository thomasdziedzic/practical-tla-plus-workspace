------------------------------- MODULE cache -------------------------------

EXTENDS Integers
CONSTANT ResourceCap, MaxConsumerReq

ASSUME ResourceCap > 0
ASSUME MaxConsumerReq \in 1..ResourceCap

(*--algorithm cache
variables resources_left = ResourceCap;

define
    ResourceInvariant == resources_left >= 0
end define;

process actor = "actor"
variables
    resources_needed \in 1..MaxConsumerReq
begin
    UseResources:
        while TRUE do
            await resources_left >= resources_needed;
            resources_left := resources_left - resources_needed;
        end while;
end process;

process time = "time"
begin:
    Tick:
        resources_left := ResourceCap;
        goto Tick;
end process;
end algorithm; *)
\* BEGIN TRANSLATION
VARIABLE resources_left

(* define statement *)
ResourceInvariant == resources_left >= 0

VARIABLE resources_needed

vars == << resources_left, resources_needed >>

ProcSet == {"actor"}

Init == (* Global variables *)
        /\ resources_left = ResourceCap
        (* Process actor *)
        /\ resources_needed \in 1..MaxConsumerReq

actor == /\ resources_left >= resources_needed
         /\ resources_left' = resources_left - resources_needed
         /\ UNCHANGED resources_needed

Next == actor

Spec == Init /\ [][Next]_vars

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Thu Sep 12 10:37:28 CDT 2019 by tom
\* Created Thu Sep 12 10:31:03 CDT 2019 by tom
