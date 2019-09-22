-------------------------- MODULE main_linkedlists --------------------------

EXTENDS TLC, Integers, FiniteSets, Sequences

CONSTANTS Nodes, NULL

INSTANCE LinkedLists WITH NULL <- NULL
AllLinkedLists == LinkedLists(Nodes)

\* There should be some LL with a cycle.
SomeLLCyclic == \E ll \in AllLinkedLists: Cyclic(ll)

\* There should be some LL without a cycle.
SomeLLAcyclic == \E ll \in AllLinkedLists: ~Cyclic(ll)

\* For every set of nodes, there is some ring that covers all of those nodes.

\* All LLs have at most one node without a parent, at most one node with two parents (in the case of a cycle), and no nodes with more than two parents.
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
\* Last modified Fri Sep 20 07:17:28 CDT 2019 by tom
\* Created Thu Sep 19 18:43:45 CDT 2019 by tom
