--------------------------- MODULE message_queue ---------------------------

EXTENDS TLC, Integers, Sequences
CONSTANTS MaxQueueSize

(*--algorithm message_queue

variable queue = <<>>;

define
    BoundedQueue == Len(queue) <= MaxQueueSize
end define;

process writer = "writer"
begin Write:
    while TRUE do
        queue := Append(queue, "msg");
    end while;
end process;

process reader = "reader"
variables current_message = "none";
begin Read:
    while TRUE do
        current_message := Head(queue);
        queue := Tail(queue);
    end while;
end process;

end algorithm; *)
\* BEGIN TRANSLATION
VARIABLE queue

(* define statement *)
BoundedQueue == Len(queue) <= MaxQueueSize

VARIABLE current_message

vars == << queue, current_message >>

ProcSet == {"writer"} \cup {"reader"}

Init == (* Global variables *)
        /\ queue = <<>>
        (* Process reader *)
        /\ current_message = "none"

writer == /\ queue' = Append(queue, "msg")
          /\ UNCHANGED current_message

reader == /\ current_message' = Head(queue)
          /\ queue' = Tail(queue)

Next == writer \/ reader

Spec == Init /\ [][Next]_vars

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Sun Sep 08 15:22:15 CDT 2019 by tom
\* Created Sun Sep 08 15:18:02 CDT 2019 by tom
