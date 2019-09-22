---- MODULE MC ----
EXTENDS main, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
w1, w2, w3
----

\* MV CONSTANT definitions Workers
const_156918878983360000 == 
{w1, w2, w3}
----

\* CONSTANT definitions @modelParameterConstants:3ItemCount
const_156918878983361000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:4ItemRange
const_156918878983362000 == 
0..2
----

=============================================================================
\* Modification History
\* Created Sun Sep 22 16:46:29 CDT 2019 by tom
