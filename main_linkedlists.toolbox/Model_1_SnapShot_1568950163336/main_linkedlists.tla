-------------------------- MODULE main_linkedlists --------------------------

EXTENDS TLC, Integers, FiniteSets, Sequences

CONSTANTS Nodes, NULL

INSTANCE LinkedLists WITH NULL <- NULL
AllLinkedLists == LinkedLists(Nodes)

SomeLLCyclic == \E ll \in AllLinkedLists: Cyclic(ll)
SomeLLAcyclic == \E ll \in AllLinkedLists: ~Cyclic(ll)

CycleImpliesRingOrTwoParents(ll) ==
    Cyclic(ll) <=>
        \/ Ring(ll)
        \/ \E n \in DOMAIN ll:
            Cardinality({p \in DOMAIN ll: ll[p] = n}) = 2

Valid ==
    /\ Assert(SomeLLCyclic, <<"There should be some LL with a cycle", AllLinkedLists>>)
    /\ Assert(SomeLLAcyclic, <<"There should be some LL without a cycle", AllLinkedLists>>)
    /\ \A ll \in AllLinkedLists:
        Assert(CycleImpliesRingOrTwoParents(ll), <<"CounterExample", ll>>)
=============================================================================
\* Modification History
\* Last modified Thu Sep 19 22:29:16 CDT 2019 by tom
\* Created Thu Sep 19 18:43:45 CDT 2019 by tom
