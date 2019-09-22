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
const_156908325266256000 == 
{p1, p2}
----

\* MV CONSTANT definitions Books
const_156908325266257000 == 
{b1}
----

\* CONSTANT definitions @modelParameterConstants:0NumCopies
const_156908325266258000 == 
1..1
----

=============================================================================
\* Modification History
\* Created Sat Sep 21 11:27:32 CDT 2019 by tom
