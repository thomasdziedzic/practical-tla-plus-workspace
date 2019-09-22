---- MODULE MC ----
EXTENDS main, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
w1, w2, w3
----

\* MV CONSTANT definitions Workers
const_156916960469668000 == 
{w1, w2, w3}
----

\* CONSTANT definitions @modelParameterConstants:3ItemCount
const_156916960469669000 == 
2
----

\* CONSTANT definitions @modelParameterConstants:4ItemRange
const_156916960469670000 == 
0..2
----

=============================================================================
\* Modification History
\* Created Sun Sep 22 11:26:44 CDT 2019 by tom
