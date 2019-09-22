---- MODULE MC ----
EXTENDS library, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
p1
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
b1, b2
----

\* MV CONSTANT definitions People
const_1569084313658106000 == 
{p1}
----

\* MV CONSTANT definitions Books
const_1569084313658107000 == 
{b1, b2}
----

\* CONSTANT definitions @modelParameterConstants:0NumCopies
const_1569084313658108000 == 
1..1
----

=============================================================================
\* Modification History
\* Created Sat Sep 21 11:45:13 CDT 2019 by tom
