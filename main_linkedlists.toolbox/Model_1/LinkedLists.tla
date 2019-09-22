-------------------------- MODULE LinkedLists --------------------------

CONSTANT NULL

LOCAL INSTANCE FiniteSets \* for cardinality
LOCAL INSTANCE Sequences
LOCAL INSTANCE TLC \* For Assert
LOCAL INSTANCE Integers

LOCAL PointerMaps(Nodes) == [Nodes -> Nodes \union {NULL}]

LOCAL Range(f) == {f[x]: x \in DOMAIN f}

LOCAL isLinkedList(PointerMap) ==
    LET
        nodes == DOMAIN PointerMap
        all_seqs == [1..Cardinality(nodes) -> nodes]
    IN \E ordering \in all_seqs:
        \* each node points to the next node in the ordering
        /\ \A i \in 1..Len(ordering)-1:
            PointerMap[ordering[i]] = ordering[i+1]
        \* all nodes in the mapping appear in the ordering
        \*/\ \A n \in nodes
        \*    \E i \in 1..Len(ordering):
        \*        ordering[i] = n
        /\ nodes \subseteq Range(ordering)
        
LinkedLists(Nodes) ==
    IF NULL \in Nodes THEN Assert(FALSE, "NULL cannot be in Nodes") ELSE
    LET
        node_subsets == (SUBSET Nodes \ {{}})
        pointer_maps_sets == {PointerMaps(subn): subn \in node_subsets}
        
        \* pointer_maps_sets is a set of set of functions,
        \* so we need to union them all together
        all_pointer_maps == UNION pointer_maps_sets
    IN {pm \in all_pointer_maps: isLinkedList(pm)}

Ring(LL) == (DOMAIN LL = Range(LL))

First(LL) ==
    IF Ring(LL)
    THEN CHOOSE node \in DOMAIN LL: TRUE
    ELSE CHOOSE node \in DOMAIN LL: node \notin Range(LL)

Cyclic(LL) == NULL \notin Range(LL)

=============================================================================
