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
const_156908416518196000 == 
{p1}
----

\* MV CONSTANT definitions Books
const_156908416518197000 == 
{b1, b2}
----

\* CONSTANT definitions @modelParameterConstants:0NumCopies
const_156908416518198000 == 
1..1
----

=============================================================================
\* Modification History
\* Created Sat Sep 21 11:42:45 CDT 2019 by tom
