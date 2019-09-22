------------------------------ MODULE database ------------------------------

EXTENDS Integers, Sequences, TLC
CONSTANTS Data, NULL, Clients

(*--algorithm database
variables
    query = [c \in Clients |-> NULL],
    db_value \in Data;

define
    Exists(val) == val /= NULL
    RequestingClients == {c \in Clients: Exists(query[c]) /\ query[c].type = "request"}
end define;

macro request(data) begin
    query[self] := [type |-> "request"] @@ data
end macro;

macro wait_for_response() begin
    await query[self].type = "response";
end macro;

process clients \in Clients
variables result = NULL;
begin
    Request:
        while TRUE do
            either \* read
                request([request |-> "read"])
                Confirm:
                    wait_for_response();
                    result := query[self].result;
                assert result = db_value;
            or \* write
                with d \in Data do
                    request([request |-> "write", data |-> d]);
                end with;
                Wait:
                    wait_for_response();
            end either;
        end while;
end process;

process database = "Database"
begin
    DB:
        with client \in RequestingClients, q = query[client] do
            if q.request = "write" then
                db_value := q.data;
            elsif q.request = "read" then
                skip;
            else
                assert FALSE; \* what did we even pass in?
            end if;
            query[client] := [type |-> "response", result |-> db_value];
        end with;
        goto DB;
end process;

end algorithm; *)
\* BEGIN TRANSLATION
VARIABLES query, db_value, pc

(* define statement *)
Exists(val) == val /= NULL
RequestingClients == {c \in Clients: Exists(query[c]) /\ query[c].type = "request"}

VARIABLE result

vars == << query, db_value, pc, result >>

ProcSet == (Clients) \cup {"Database"}

Init == (* Global variables *)
        /\ query = [c \in Clients |-> NULL]
        /\ db_value \in Data
        (* Process clients *)
        /\ result = [self \in Clients |-> NULL]
        /\ pc = [self \in ProcSet |-> CASE self \in Clients -> "Request"
                                        [] self = "Database" -> "DB"]

Request(self) == /\ pc[self] = "Request"
                 /\ \/ /\ result' = [result EXCEPT ![self] = db_value]
                       /\ Assert(result'[self] = db_value, 
                                 "Failure of assertion at line 31, column 17.")
                       /\ pc' = [pc EXCEPT ![self] = "Request"]
                       /\ query' = query
                    \/ /\ \E d \in Data:
                            query' = [query EXCEPT ![self] = [type |-> "request", data |-> d]]
                       /\ pc' = [pc EXCEPT ![self] = "Wait"]
                       /\ UNCHANGED result
                 /\ UNCHANGED db_value

Wait(self) == /\ pc[self] = "Wait"
              /\ query[self].type = "response"
              /\ pc' = [pc EXCEPT ![self] = "Request"]
              /\ UNCHANGED << query, db_value, result >>

clients(self) == Request(self) \/ Wait(self)

DB == /\ pc["Database"] = "DB"
      /\ \E client \in RequestingClients:
           LET q == query[client] IN
             /\ db_value' = q.data
             /\ query' = [query EXCEPT ![client] = [type |-> "response"]]
      /\ pc' = [pc EXCEPT !["Database"] = "DB"]
      /\ UNCHANGED result

database == DB

Next == database
           \/ (\E self \in Clients: clients(self))

Spec == Init /\ [][Next]_vars

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Fri Sep 20 21:15:40 CDT 2019 by tom
\* Created Fri Sep 20 13:50:15 CDT 2019 by tom
