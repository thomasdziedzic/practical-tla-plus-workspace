--------------------------- MODULE message_queue ---------------------------

EXTENDS TLC, Integers, Sequences
CONSTANTS MaxQueueSize

(*--algorithm message_queue

variable queue = <<>>;

define
    BoundedQueue == Len(queue) <= MaxQueueSize
end define;

macro add_to_queue(val) begin
    await Len(queue) < MaxQueueSize;
    queue := Append(queue, val);
end macro;

process writer = "writer"
begin Write:
    while TRUE do
        add_to_queue("msg");
    end while;
end process;

process reader = "reader"
variables current_message = "none";
begin Read:
    while TRUE do
        await queue /= <<>>;
        current_message := Head(queue);
        queue := Tail(queue);
        either
            skip;
        or
            NotifyFailure:
                current_message := "none";
                add_to_queue("fail");
        end either;
    end while;
end process;

end algorithm; *)
\* BEGIN TRANSLATION
VARIABLES queue, pc

(* define statement *)
BoundedQueue == Len(queue) <= MaxQueueSize

VARIABLE current_message

vars == << queue, pc, current_message >>

ProcSet == {"writer"} \cup {"reader"}

Init == (* Global variables *)
        /\ queue = <<>>
        (* Process reader *)
        /\ current_message = "none"
        /\ pc = [self \in ProcSet |-> CASE self = "writer" -> "Write"
                                        [] self = "reader" -> "Read"]

Write == /\ pc["writer"] = "Write"
         /\ Len(queue) < MaxQueueSize
         /\ queue' = Append(queue, "msg")
         /\ pc' = [pc EXCEPT !["writer"] = "Write"]
         /\ UNCHANGED current_message

writer == Write

Read == /\ pc["reader"] = "Read"
        /\ queue /= <<>>
        /\ current_message' = Head(queue)
        /\ queue' = Tail(queue)
        /\ \/ /\ TRUE
              /\ pc' = [pc EXCEPT !["reader"] = "Read"]
           \/ /\ pc' = [pc EXCEPT !["reader"] = "NotifyFailure"]

NotifyFailure == /\ pc["reader"] = "NotifyFailure"
                 /\ current_message' = "none"
                 /\ Len(queue) < MaxQueueSize
                 /\ queue' = Append(queue, "fail")
                 /\ pc' = [pc EXCEPT !["reader"] = "Read"]

reader == Read \/ NotifyFailure

Next == writer \/ reader

Spec == Init /\ [][Next]_vars

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Sun Sep 08 15:40:42 CDT 2019 by tom
\* Created Sun Sep 08 15:18:02 CDT 2019 by tom
