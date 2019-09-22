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
const_1569084898885126000 == 
{p1, p2}
----

\* MV CONSTANT definitions Books
const_1569084898885127000 == 
{b1, b2}
----

\* CONSTANT definitions @modelParameterConstants:0NumCopies
const_1569084898885128000 == 
1..1
----

=============================================================================
\* Modification History
\* Created Sat Sep 21 11:54:58 CDT 2019 by tom
