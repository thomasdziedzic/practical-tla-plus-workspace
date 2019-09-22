---- MODULE MC ----
EXTENDS main, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
w1, w2, w3
----

\* MV CONSTANT definitions Workers
const_156917874645591000 == 
{w1, w2, w3}
----

\* CONSTANT definitions @modelParameterConstants:3ItemCount
const_156917874645592000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:4ItemRange
const_156917874645593000 == 
0..2
----

=============================================================================
\* Modification History
\* Created Sun Sep 22 13:59:06 CDT 2019 by tom
