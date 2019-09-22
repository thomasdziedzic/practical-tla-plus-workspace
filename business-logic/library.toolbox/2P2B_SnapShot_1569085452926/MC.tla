---- MODULE MC ----
EXTENDS library, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
p1, p2
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
b1, b2
----

\* MV CONSTANT definitions People
const_1569085448892142000 == 
{p1, p2}
----

\* MV CONSTANT definitions Books
const_1569085448893143000 == 
{b1, b2}
----

\* CONSTANT definitions @modelParameterConstants:0NumCopies
const_1569085448893144000 == 
1..1
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1569085448893145000 ==
\A p \in People: Cardinality(wants[p]) <= 1
----
=============================================================================
\* Modification History
\* Created Sat Sep 21 12:04:08 CDT 2019 by tom
