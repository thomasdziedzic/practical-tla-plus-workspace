---- MODULE MC ----
EXTENDS main, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
w1, w2, w3
----

\* MV CONSTANT definitions Workers
const_156917592535079000 == 
{w1, w2, w3}
----

\* CONSTANT definitions @modelParameterConstants:3ItemCount
const_156917592535080000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:4ItemRange
const_156917592535081000 == 
0..2
----

=============================================================================
\* Modification History
\* Created Sun Sep 22 13:12:05 CDT 2019 by tom
