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
const_156908399286376000 == 
{p1, p2}
----

\* MV CONSTANT definitions Books
const_156908399286377000 == 
{b1}
----

\* CONSTANT definitions @modelParameterConstants:0NumCopies
const_156908399286378000 == 
1..1
----

=============================================================================
\* Modification History
\* Created Sat Sep 21 11:39:52 CDT 2019 by tom
