-------------------------- MODULE main_linkedlists --------------------------

EXTENDS TLC, Integers, FiniteSets, Sequences

CONSTANTS Nodes, NULL

INSTANCE LinkedLists WITH NULL <- NULL
PT == INSTANCE PT

AllLinkedLists == LinkedLists(Nodes)

\* There should be some LL with a cycle.
SomeLLCyclic == \E ll \in AllLinkedLists: Cyclic(ll)

\* There should be some LL without a cycle.
SomeLLAcyclic == \E ll \in AllLinkedLists: ~Cyclic(ll)

\* For every set of nodes, there is some ring that covers all of those nodes.
RingsForAll(nodes) == \E ll \in AllLinkedLists: nodes = (DOMAIN ll)

\* All LLs have at most one node without a parent.
AtMostOneNodeWithoutParent(ll) == Cardinality(DOMAIN ll \ PT!Range(ll)) < 2

\* All LLs have at most one node with two parents (in the case of a cycle)
CycleImpliesRingOrTwoParents(ll) ==
    Cyclic(ll) <=>
        \/ Ring(ll)
        \/ \E n \in DOMAIN ll:
            Cardinality({p \in DOMAIN ll: ll[p] = n}) = 2

\* All LLs have no nodes with more than two parents.
AllNodesHaveAtMostTwoParents(ll) == \A node \in DOMAIN ll: Cardinality({p \in DOMAIN ll: ll[p] = node}) <= 2


Valid ==
    \* There should be some LL with a cycle.
    /\ Assert(SomeLLCyclic, <<"There should be some LL with a cycle", AllLinkedLists>>)
    \* There should be some LL without a cycle.
    /\ Assert(SomeLLAcyclic, <<"There should be some LL without a cycle", AllLinkedLists>>)
    \* For every set of nodes, there is some ring that covers all of those nodes.
    /\ \A nodes \in (SUBSET Nodes \ {{}}):
        Assert(RingsForAll(nodes), <<"There should be a ring for this set of nodes", nodes>>)
    \* All LLs have at most one node without a parent,
    /\ \A ll \in AllLinkedLists:
        Assert(AtMostOneNodeWithoutParent(ll), <<"CounterExample", ll>>)
    \* All LLs have at most one node with two parents (in the case of a cycle)
    /\ \A ll \in AllLinkedLists:
        Assert(CycleImpliesRingOrTwoParents(ll), <<"CounterExample", ll>>)
    \* All LLs have no nodes with more than two parents.
    /\ \A ll \in AllLinkedLists:
        Assert(AllNodesHaveAtMostTwoParents(ll), <<"CounterExample", ll>>)
=============================================================================
\* Modification History
\* Last modified Fri Sep 20 08:04:45 CDT 2019 by tom
\* Created Thu Sep 19 18:43:45 CDT 2019 by tom
