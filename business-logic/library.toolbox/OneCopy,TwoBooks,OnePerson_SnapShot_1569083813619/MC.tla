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
const_156908381157671000 == 
{p1}
----

\* MV CONSTANT definitions Books
const_156908381157672000 == 
{b1, b2}
----

\* CONSTANT definitions @modelParameterConstants:0NumCopies
const_156908381157673000 == 
1..1
----

=============================================================================
\* Modification History
\* Created Sat Sep 21 11:36:51 CDT 2019 by tom
