---- MODULE MC ----
EXTENDS library, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
p1, p2
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
b1
----

\* MV CONSTANT definitions People
const_156908209358423000 == 
{p1, p2}
----

\* MV CONSTANT definitions Books
const_156908209358424000 == 
{b1}
----

\* CONSTANT definitions @modelParameterConstants:0NumCopies
const_156908209358425000 == 
1..1
----

=============================================================================
\* Modification History
\* Created Sat Sep 21 11:08:13 CDT 2019 by tom
