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
const_1569085479307148000 == 
{p1, p2}
----

\* MV CONSTANT definitions Books
const_1569085479307149000 == 
{b1, b2}
----

\* CONSTANT definitions @modelParameterConstants:0NumCopies
const_1569085479307150000 == 
1..1
----

\* CONSTRAINT definition @modelParameterContraint:0
constr_1569085479307151000 ==
\A p \in People: Cardinality(wants[p]) <= 1
----
=============================================================================
\* Modification History
\* Created Sat Sep 21 12:04:39 CDT 2019 by tom
