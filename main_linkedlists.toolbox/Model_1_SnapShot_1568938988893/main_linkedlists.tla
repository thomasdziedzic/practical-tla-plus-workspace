-------------------------- MODULE main_linkedlists --------------------------

EXTENDS TLC, Integers, FiniteSets, Sequences

CONSTANTS Nodes, NULL

INSTANCE LinkedLists WITH NULL <- NULL
AllLinkedLists == LinkedLists(Nodes)

CycleImpliesRingOrTwoParents(ll) ==
    Cyclic(ll) <=>
        \/ Ring(ll)
        \/ \E n \in DOMAIN ll:
            Cardinality({p \in DOMAIN ll: ll[p] = n}) = 2

Valid ==
    /\ \A ll \in AllLinkedLists:
        Assert(CycleImpliesRingOrTwoParents(ll), <<"CounterExample", ll>>)

=============================================================================
\* Modification History
\* Last modified Thu Sep 19 19:23:01 CDT 2019 by tom
\* Created Thu Sep 19 18:43:45 CDT 2019 by tom
