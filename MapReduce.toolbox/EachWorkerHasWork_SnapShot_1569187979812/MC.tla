---- MODULE MC ----
EXTENDS main, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
w1, w2, w3
----

\* MV CONSTANT definitions Workers
const_15691879723227000 == 
{w1, w2, w3}
----

\* CONSTANT definitions @modelParameterConstants:3ItemCount
const_15691879723228000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:4ItemRange
const_15691879723229000 == 
0..2
----

=============================================================================
\* Modification History
\* Created Sun Sep 22 16:32:52 CDT 2019 by tom
