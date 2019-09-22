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
const_156908204506320000 == 
{p1, p2}
----

\* MV CONSTANT definitions Books
const_156908204506321000 == 
{b1}
----

\* CONSTANT definitions @modelParameterConstants:0NumCopies
const_156908204506322000 == 
1..1
----

=============================================================================
\* Modification History
\* Created Sat Sep 21 11:07:25 CDT 2019 by tom
