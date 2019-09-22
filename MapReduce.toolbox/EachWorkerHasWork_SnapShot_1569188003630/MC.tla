---- MODULE MC ----
EXTENDS main, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
w1, w2, w3
----

\* MV CONSTANT definitions Workers
const_156918799660718000 == 
{w1, w2, w3}
----

\* CONSTANT definitions @modelParameterConstants:3ItemCount
const_156918799660719000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:4ItemRange
const_156918799660720000 == 
0..2
----

=============================================================================
\* Modification History
\* Created Sun Sep 22 16:33:16 CDT 2019 by tom
